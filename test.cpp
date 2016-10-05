#include "test.hpp"

#include "onemax_individual.hpp"
#include "onemax2_individual.hpp"
#include "leading_individual.hpp"
#include "haystack_individual.hpp"
#include "nqueens_individual.hpp"

#include <stdlib.h>
#include <math.h>
#include <stdio.h>
Test::Test(const Parameter& my_parameter):
	parameter(my_parameter),
	fitnessResults(new int[parameter.testRuns * parameter.maxGenerations]),
	diversityResults(new double[parameter.testRuns * parameter.maxGenerations]),
	N((double)parameter.popSize * parameter.selection)
{}

Test::~Test()
{}

void Test::run()
{
// The distribution vector
	double* p;
	int* rounded_number = new int[parameter.maxLength];
	double* rounding_error = new double[parameter.maxLength];
	
	for(int i = 0; i < parameter.maxLength; i++)
		rounding_error[i] = 0.0;

	switch(parameter.problemType)
	{
		case LEADING_PROBLEM:
		case NEEDLE_HAYSTACK_PROBLEM:
		case ONEMAX_PROBLEM:
			p = new double[parameter.maxLength];
			Individual::goalString = new int[parameter.maxLength];
			if(parameter.randomOneMax)
			{
				for(int i = 0; i < parameter.maxLength; i++)
					Individual::goalString[i] = rand()%2;
			}
			else 
				for(int i = 0; i < parameter.maxLength; i++)
					Individual::goalString[i] = 1;
			break;
		case ONEMAX_TWO_PEAKS_PROBLEM:
			p = new double[parameter.maxLength];
/*			Individual::goalString = new int[parameter.maxLength];
			if(parameter.randomOneMax)
			{
				for(int i = 0; i < parameter.maxLength; i++)
					Individual::goalString[i] = rand()%2;
			}
			else 
				for(int i = 0; i < parameter.maxLength; i++)
					Individual::goalString[i] = 1;*/
			break;
		case NQUEENS_PROBLEM:
			p = new double[parameter.maxLength * parameter.maxLength];
			break;
		default:break;
	}
	double n = ((double)(parameter.popSize) - 1.0)*N / ((N - 1.0)*(double)parameter.popSize);
// p1, p2 are the lower and upper border of our function
	double p1 = 0.5 - sqrt(1.0 - 1.0/n) / 2.0;
	double p2 = 0.5 + sqrt(1.0 - 1.0/n) / 2.0;
	if(p1 > p2)
	{
		double tmp = p1;
		p1 = p2;
		p2 = tmp;
	}



// Initialize Population
	Individual* individual[parameter.popSize];

	printf("%s\n", parameter.print().c_str());
	for(int z = 0; z < parameter.testRuns; z++)
	{
//		printf("%i\n", z);
		int generation = 0;
// Reset generation, rounding error and distribution vector		
		switch(parameter.problemType)
		{
			case NEEDLE_HAYSTACK_PROBLEM:
				for(int i = 0; i < parameter.maxLength; i++)
					p[i] = 0.5;
				for(int i = 0; i < parameter.popSize; i++)
					individual[i] = new Haystack_Individual(parameter.maxLength);
				break;
			case ONEMAX_PROBLEM:
				for(int i = 0; i < parameter.maxLength; i++)
					p[i] = 0.5;
				for(int i = 0; i < parameter.popSize; i++)
					individual[i] = new OneMax_Individual(parameter.maxLength);
				break;
			case LEADING_PROBLEM:
				for(int i = 0; i < parameter.maxLength; i++)
					p[i] = 0.5;
				for(int i = 0; i < parameter.popSize; i++)
					individual[i] = new Leading_Individual(parameter.maxLength);
				break;

			case ONEMAX_TWO_PEAKS_PROBLEM:
				for(int i = 0; i < parameter.maxLength; i++)
					p[i] = 0.5;
				for(int i = 0; i < parameter.popSize; i++)
					individual[i] = new OneMax2_Individual(parameter.maxLength);
				break;

			case NQUEENS_PROBLEM:
				for(int i = 0; i < parameter.maxLength * parameter.maxLength; i++)
					p[i] = 1 / (double)parameter.maxLength;
				for(int i = 0; i < parameter.popSize; i++)
					individual[i] = new NQueens_Individual(parameter.maxLength);
				break;
			default:break;
		}

		for(int i = 0; i < parameter.popSize; i++)
			individual[i]->createOnEstimatedDistribution(p);
		Individual::bestFitness = 0;
		while(generation < parameter.maxGenerations)
		{
// calculate fitness and sort individuals, highest fitness first
			for(int i = 0; i < parameter.popSize - 2; i++)
				for(int j = 0; j < parameter.popSize - i - 1; j++)
					if(individual[j]->calculateIndividualFitness() < individual[(j+1)]->calculateIndividualFitness())
					{
						Individual* t = individual[j];
						individual[j] = individual[(j+1)];
						individual[(j+1)] = t;
					}
			if(parameter.correction[parameter.currentCorrection] == TEST_CORRECTION)
			{
				fitnessResults[z * parameter.maxGenerations + generation] = 0;
				if(generation == 0)
					diversityResults[z * parameter.maxGenerations + generation] = 0.25;
				else
					diversityResults[z * parameter.maxGenerations + generation] = 
						diversityResults[z * parameter.maxGenerations + generation-1] * (double)(1.0 - 1.0 / N);
			} else
			{
				double averageDiversity = 0.0;
				for(int i = 0; i < parameter.maxLength; i++)
					averageDiversity += p[i] * (1.0 - p[i]);
				averageDiversity /= (double)parameter.maxLength;
// record best fitness
				if(Individual::bestFitness < individual[0]->calculateIndividualFitness())
					Individual::bestFitness = individual[0]->calculateIndividualFitness();
				fitnessResults[z * parameter.maxGenerations + generation] = Individual::bestFitness;
				diversityResults[z * parameter.maxGenerations + generation] = averageDiversity;
			}
			generation++;

			double* oldp;
//			if(parameter.correction[parameter.currentCorrection] == LAPLACE_REMEMBER_CORRECTION)
//			{
			oldp = new double[parameter.maxLength];
			for(int i = 0; i < parameter.maxLength; i++)
				oldp[i] = p[i];
//			}

// Gather data from selected individuals
			switch(parameter.problemType)
			{
				case LEADING_PROBLEM:
				case ONEMAX_TWO_PEAKS_PROBLEM:
				case NEEDLE_HAYSTACK_PROBLEM:
				case ONEMAX_PROBLEM:
// Just UMDA, don't take distribution from last iteration into account
					for(int i = 0; i < parameter.maxLength; i++)
						p[i] = 0.0;		
					for(int i = (int)N; i--;)
					{
						for(int j = 0; j < parameter.maxLength; j++)
							p[j] += individual[i]->bitstring[j];
					}break;
				case NQUEENS_PROBLEM:
// Just UMDA, don't take distribution from last iteration into account
					for(int i = 0; i < parameter.maxLength * parameter.maxLength; i++)
						p[i] = 0.0;
					for(int i = (int)N; i--;)
					{
		// Die Matrix p wird so gefuellt:
		// Jede Zeile entspricht einer Dame
		// Jede Spalte entspricht der Zahl der Individuen, die die Dame in diese Spalte gesetzt haben
						for(int j = 0; j < parameter.maxLength; j++)
							p[individual[i]->bitstring[j] + j * parameter.maxLength]++;
					}break;
				default:break;
			}

			for(int i = 0; i < parameter.maxLength; i++)
			{
				switch(parameter.correction[parameter.currentCorrection])
				{
					case NO_CORRECTION:p[i] = p[i] / N; break;
					case NO_CORRECTION_BOUNDED:
					{
						p[i] = p[i] / N;
						double min = 1.0 / N;
						if(p[i] < min)
							p[i] = min;
						else if(p[i] > 1.0 - min)
							p[i] = 1.0 - min;
					}break;
					case DIVERSITY_CORRECTION_LAPLACE:
					{
						p[i] = (p[i] + parameter.k) / (N + 2.0 * parameter.k);
						double c = sqrt(1.0 - 4.0 * p[i] * (1.0 - p[i]) * n);
						double q;
						if(p[i] < p1)
							q = 0.5 - c / 2.0;
						else if(p[i] > p2)
							q = 0.5 + c / 2.0;
						else 
							q = 0.5;
						p[i] = q;
					}break;
					case DIVERSITY_CORRECTION_REMEMBER_LAPLACE:
					{
						p[i] = (p[i] + 2.0 * parameter.k * oldp[i]) / (N + 2.0 * parameter.k);
						double c = sqrt(1.0 - 4.0 * p[i] * (1.0 - p[i]) * n);
						double q;
						if(p[i] < p1)
							q = 0.5 - c / 2.0;
						else if(p[i] > p2)
							q = 0.5 + c / 2.0;
						else 
							q = 0.5;
						p[i] = q;
					}break;

					case LAPLACE_REMEMBER_CORRECTION:p[i] = (p[i] + 2.0 * parameter.k * oldp[i]) / (N + 2.0 * parameter.k);
									 break;
					case LAPLACE_CORRECTION:p[i] = (p[i] + parameter.k) / (N + 2.0 * parameter.k);break;
					case DIVERSITY_CORRECTION:
					{
						p[i] = p[i] / N;
						double c = sqrt(1.0 - 4.0 * p[i] * (1.0 - p[i]) * n);
						double q;
						if(p[i] < p1)
							q = 0.5 - c / 2.0;
						else if(p[i] > p2)
							q = 0.5 + c / 2.0;
						else 
							q = 0.5;
						p[i] = q;
					}break;

					case DIVERSITY_CORRECTION_BOUNDED:
					{
						p[i] = p[i] / N;
						double c = sqrt(1.0 - 4.0 * p[i] * (1.0 - p[i]) * n);
						double q;
						if(p[i] < p1)
							q = 0.5 - c / 2.0;
						else if(p[i] > p2)
							q = 0.5 + c / 2.0;
						else 
							q = 0.5;
						double min = 1.0 / N;
						if(q < min)
							q = min;
						else if(q > 1.0 - min)
							q = 1.0 - min;
						p[i] = q;
					}break;
					case TEST_CORRECTION:
						p[i] = 0.5;
					break;
					default:break;
				}
			// bei NQUEENS ergibt sich jetzt fuer p:
			// Summe einer Zeile in p muss immer 1 sein
			// Waehle eine Spalte nach dem Muster aus, dass man den hoechsten Wert uebernimmt.
			//
			
                                if(parameter.rememberAndReuseSamplingError)
                                {
// Determine number of 1s in subpopulation
                                        double number_of_1s = p[i] * parameter.popSize  + rounding_error[i];
// No whole number? Then remember the remainder
                                        rounded_number[i] = (int)round(number_of_1s);
                                        rounding_error[i] = number_of_1s - (double)rounded_number[i];
//      Create Max Length Arrays with the length N, filled with exactly 'p[i] * popSize + rounding error' 1s in a random order
                                } else
                                rounded_number[i] = (int)round(p[i] * parameter.popSize);
				
			} // end for(int i = 0; i < parameter.maxLength; i++)

				 delete oldp;
		// TODO Nqueens
			if(parameter.useExactRandomDistribution)
			{
				// reset
				for(int i = 0; i < parameter.popSize; i++)
				{
					individual[i]->fitness = -1;
					for(int j = 0; j < parameter.maxLength; j++)
						individual[i]->bitstring[j] = 0;
				}
				for(int j = 0; j < parameter.maxLength; j++)
				{
					for(int i = 0; i < rounded_number[j]; i++)
					{
						int a = 0;
						do
						{
							a = rand()%parameter.popSize;
						} while(individual[a]->bitstring[j] == 1);
						individual[a]->bitstring[j] = 1;
					}
				}
			} else
			for(int i = 0; i < parameter.popSize; i++)
				individual[i]->createOnEstimatedDistribution(p);

		} // end while(generation < parameter.maxGenerations)

// get best individual and reset population	
		
		for(int i = 0; i < parameter.popSize; i++)
			delete individual[i];
	} // end for(int z = 0; z < parameter.testRuns; z++)

	switch(parameter.problemType)
	{
		case LEADING_PROBLEM:
		case NEEDLE_HAYSTACK_PROBLEM:
		case ONEMAX_PROBLEM:delete Individual::goalString;break;
		case ONEMAX_TWO_PEAKS_PROBLEM:break;
		case NQUEENS_PROBLEM:break;
		default:break;
	}
	delete p;
	delete rounding_error;
	delete rounded_number;
}

int* Test::getFitnessResults() const
{
	return fitnessResults;
}

double* Test::getDiversityResults() const
{
	return diversityResults;
}


