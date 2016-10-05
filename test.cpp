#include "test.hpp"


#include <stdlib.h>
#include <math.h>
#include <stdio.h>

Test::Test(const Parameter& my_parameter):
	parameter(my_parameter),
	fitnessResults(new double[parameter.testRuns * parameter.maxGenerations]),
	diversityResults(new double[parameter.testRuns * parameter.maxGenerations]),
	N((double)parameter.popSize * parameter.selection)
{}

Test::~Test()
{}

//testen: gruenen bei 1111, 0000 und random

void Test::run()
{
// The distribution vector
	double* p = new double[parameter.maxLength];

	switch(parameter.problemType)
	{
		case NEEDLE_HAYSTACK_PROBLEM:
		case ONEMAX_PROBLEM:
		case LEADING_PROBLEM:			
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
// special handling 
		case FLAT_PROBLEM:
		case SCHAFFER_PROBLEM:
		case ONEMAX_TWO_PEAKS_PROBLEM:break;
		case NK_PROBLEM:
			break;
		default:break;
	}
	double p1, p2, n;
	bool calc_p12;
	bool use_exact_distribution = false;
	double* oldp = NULL;
	switch(parameter.correction[parameter.currentCorrection])
	{
		case NO_CORRECTION_EXACT_DISTRIBUTION:
		case NO_CORRECTION_EXACT_DISTRIBUTION_BOUNDED:
			use_exact_distribution = true;
			break;
		case DIVERSITY_CORRECTION_EXACT_DISTRIBUTION:
		case DIVERSITY_CORRECTION_EXACT_DISTRIBUTION_BOUNDED:
			use_exact_distribution = true;
		case DIVERSITY_CORRECTION:
		case DIVERSITY_CORRECTION_BOUNDED:
				n = ((double)(parameter.popSize) - 1.0)*N / ((N - 1.0)*(double)parameter.popSize);
				calc_p12 = true;
				break;
		case LAPLACE_CORRECTION_EXACT_DISTRIBUTION:
			use_exact_distribution = true;
		case LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION:
		case LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION_BOUNDED:
			use_exact_distribution = true;				
		case LAPLACE_REMEMBER_CORRECTION:
		case LAPLACE_REMEMBER_CORRECTION_BOUNDED:
			oldp = new double[parameter.maxLength];
			break;				
		case EXACT_CORRECTION_EXACT_DISTRIBUTION:
		case EXACT_CORRECTION_EXACT_DISTRIBUTION_BOUNDED:
			use_exact_distribution = true;
		case EXACT_CORRECTION:
		case EXACT_CORRECTION_BOUNDED:			
				n = ((double)N / (double)(N - 1.0));
				calc_p12 = true;
				break;
		default:calc_p12 = false;
				break;
	}

	if(calc_p12)
	{
// p1, p2 are the lower and upper border of our function
		p1 = 0.5 - sqrt(1.0 - 1.0/n) / 2.0;
		p2 = 0.5 + sqrt(1.0 - 1.0/n) / 2.0;
		if(p1 > p2)
		{
			double tmp = p1;
			p1 = p2;
			p2 = tmp;
		}
	}
	
// Initialize Population
	Individual* individual[parameter.popSize];

// Reset generation, rounding error and distribution vector
	Individual::maxLength = parameter.maxLength;
	Individual::k = parameter.k;
	switch(parameter.problemType)
	{
		case FLAT_PROBLEM:
			for(int i = 0; i < parameter.popSize; i++)
				individual[i] = new Flat_Individual();
			break;
		case NEEDLE_HAYSTACK_PROBLEM:
			for(int i = 0; i < parameter.popSize; i++)
				individual[i] = new Haystack_Individual();
			break;
		case ONEMAX_PROBLEM:
			for(int i = 0; i < parameter.popSize; i++)
				individual[i] = new OneMax_Individual();
			break;
		case ONEMAX_TWO_PEAKS_PROBLEM:
			for(int i = 0; i < parameter.popSize; i++)
				individual[i] = new OneMax2_Individual();
			break;
		case LEADING_PROBLEM:
			for(int i = 0; i < parameter.popSize; i++)
				individual[i] = new Leading_Individual();
			break;
		case SCHAFFER_PROBLEM:
			for(int i = 0; i < parameter.popSize; i++)
				individual[i] = new Schaffer_Individual();
			break;
		case PLATEAU_PROBLEM:
			for(int i = 0; i < parameter.popSize; i++)
				individual[i] = new Plateau_Individual();
			break;			
		case NK_PROBLEM:
			for(int i = 0; i < parameter.popSize; i++)
				individual[i] = new NK_Individual();
			break;
		default:break;
	}

	for(int z = 0; z < parameter.testRuns; z++)
	{
		Individual::run = z;
		printf(".");
		int generation = 0;
		for(int i = 0; i < parameter.maxLength; i++)
			p[i] = 0.5;
		
		for(int i = 0; i < parameter.popSize; i++)
		{
			individual[i]->reset();
			individual[i]->createOnEstimatedDistribution(p);
		}
			
		while(generation < parameter.maxGenerations)
		{
			// we need no sorting with a flat fitness landscape
			if(parameter.problemType != FLAT_PROBLEM)
			{
// calculate fitness and sort individuals, highest fitness first
				for(int i = 0; i < parameter.popSize - 2; i++)
					for(int j = 0; j < parameter.popSize - i - 1; j++)
					{
						if(individual[j]->calculateIndividualFitness() < individual[(j+1)]->calculateIndividualFitness())
						{
							Individual* t = individual[j];
							individual[j] = individual[(j+1)];
							individual[(j+1)] = t;
						}
					}
			}
				
			if(parameter.correction[parameter.currentCorrection] == TEST_CORRECTION)
			{
				fitnessResults[z * parameter.maxGenerations + generation] = 0.0;
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
				fitnessResults[z * parameter.maxGenerations + generation] = individual[0]->calculateIndividualFitness();
				diversityResults[z * parameter.maxGenerations + generation] = averageDiversity;
			}
			generation++;

			if((parameter.correction[parameter.currentCorrection] == LAPLACE_REMEMBER_CORRECTION)||
				(parameter.correction[parameter.currentCorrection] == LAPLACE_REMEMBER_CORRECTION_BOUNDED)||
				(parameter.correction[parameter.currentCorrection] == LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION)||
				(parameter.correction[parameter.currentCorrection] == LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION_BOUNDED))				
			{
				for(int i = 0; i < parameter.maxLength; i++)
					oldp[i] = p[i];
			}

// Gather data from selected individuals
// Just UMDA, don't take distribution from last iteration into account
			for(int i = 0; i < parameter.maxLength; i++)
				p[i] = 0.0;		
			for(int i = (int)N; i--;)
			{
				for(int j = 0; j < parameter.maxLength; j++)
					p[j] += individual[i]->bitstring[j];
			}
			
			for(int i = 0; i < parameter.maxLength; i++)
			{
				switch(parameter.correction[parameter.currentCorrection])
				{
					case NO_CORRECTION:
					case NO_CORRECTION_EXACT_DISTRIBUTION:
						p[i] = p[i] / N; break;
					case NO_CORRECTION_BOUNDED:
					case NO_CORRECTION_EXACT_DISTRIBUTION_BOUNDED:
					{
						p[i] = p[i] / N;
						double min = parameter.bounded_beta;//1.0 / N;
						if(p[i] < min)
							p[i] = min;
						else if(p[i] > 1.0 - min)
							p[i] = 1.0 - min;
					}break;
					
					case LAPLACE_CORRECTION:
					case LAPLACE_CORRECTION_EXACT_DISTRIBUTION:						
						p[i] = (p[i] + parameter.laplace_alpha) / (N + 2.0*parameter.laplace_alpha);
						break;

					case LAPLACE_REMEMBER_CORRECTION:
					case LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION:
						p[i] = (p[i] + 2.0 * oldp[i] * parameter.laplace_alpha) / (N + 2.0 * parameter.laplace_alpha); 
						break;
						
					case LAPLACE_REMEMBER_CORRECTION_BOUNDED:
					case LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION_BOUNDED:
					{
						p[i] = (p[i] + 2.0 * oldp[i] * parameter.laplace_alpha) / (N + 2.0 * parameter.laplace_alpha);
						double min = parameter.bounded_beta;//1.0 / N;
						if(p[i] < min)
							p[i] = min;
						else if(p[i] > 1.0 - min)
							p[i] = 1.0 - min;
					}break;						
					
					case EXACT_CORRECTION:
					case EXACT_CORRECTION_EXACT_DISTRIBUTION:
					case DIVERSITY_CORRECTION:
					case DIVERSITY_CORRECTION_EXACT_DISTRIBUTION:
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
					case EXACT_CORRECTION_BOUNDED:
					case EXACT_CORRECTION_EXACT_DISTRIBUTION_BOUNDED:
					case DIVERSITY_CORRECTION_BOUNDED:
					case DIVERSITY_CORRECTION_EXACT_DISTRIBUTION_BOUNDED:	
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
						double min = parameter.bounded_beta;//1.0 / N;
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
			} // end for(int i = 0; i < parameter.maxLength; i++)

		// create new population
			if(use_exact_distribution)
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
					int number_of_1s = (int)(floor(p[j] * parameter.popSize));
					float probability_for_one_more = (float)(p[j] * parameter.popSize) - number_of_1s;
					if(rand() < RAND_MAX * probability_for_one_more)
						number_of_1s++;
					for(int i = 0; i < number_of_1s; i++)
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
	} // end for(int z = 0; z < parameter.testRuns; z++)

	for(int i = 0; i < parameter.popSize; i++)
		delete individual[i];

		
	switch(parameter.problemType)
	{
		case LEADING_PROBLEM:
		case NEEDLE_HAYSTACK_PROBLEM:
		case ONEMAX_PROBLEM:delete Individual::goalString;break;
		case SCHAFFER_PROBLEM:
		case PLATEAU_PROBLEM:
		case FLAT_PROBLEM:
		case ONEMAX_TWO_PEAKS_PROBLEM:
		case NK_PROBLEM:
			break;
		default:break;
	}
	delete oldp;
	delete p;
}

double* Test::getFitnessResults() const
{
	return fitnessResults;
}

double* Test::getDiversityResults() const
{
	return diversityResults;
}

void Test::init_values(eCorrectionType correction_type, double &p1, double &p2, double &n, double* oldp, bool &calc_p12, bool &use_exact_distribution)
{
	switch(correction_type)
	{
		case NO_CORRECTION_EXACT_DISTRIBUTION:
		case NO_CORRECTION_EXACT_DISTRIBUTION_BOUNDED:
			use_exact_distribution = true;
			break;
		case DIVERSITY_CORRECTION_EXACT_DISTRIBUTION:
		case DIVERSITY_CORRECTION_EXACT_DISTRIBUTION_BOUNDED:
			use_exact_distribution = true;
		case DIVERSITY_CORRECTION:
		case DIVERSITY_CORRECTION_BOUNDED:
				n = ((double)(parameter.popSize) - 1.0)*N / ((N - 1.0)*(double)parameter.popSize);
				calc_p12 = true;
				break;
		case LAPLACE_CORRECTION_EXACT_DISTRIBUTION:
			use_exact_distribution = true;
		case LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION:
		case LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION_BOUNDED:
			use_exact_distribution = true;				
		case LAPLACE_REMEMBER_CORRECTION:
		case LAPLACE_REMEMBER_CORRECTION_BOUNDED:
			oldp = new double[parameter.maxLength];
			break;				
		case EXACT_CORRECTION_EXACT_DISTRIBUTION:
		case EXACT_CORRECTION_EXACT_DISTRIBUTION_BOUNDED:
			use_exact_distribution = true;
		case EXACT_CORRECTION:
		case EXACT_CORRECTION_BOUNDED:			
				n = ((double)N / (double)(N - 1.0));
				calc_p12 = true;
				break;
		default:calc_p12 = false;
				break;
	}

	if(calc_p12)
	{
// p1, p2 are the lower and upper border of our function
		p1 = 0.5 - sqrt(1.0 - 1.0/n) / 2.0;
		p2 = 0.5 + sqrt(1.0 - 1.0/n) / 2.0;
		if(p1 > p2)
		{
			double tmp = p1;
			p1 = p2;
			p2 = tmp;
		}
	}
}

void Test::printDistributionCorrection(std::string basename, std::string title, eCorrectionType correction_type, double k)
{
	if((correction_type == LAPLACE_REMEMBER_CORRECTION)||
		(correction_type == LAPLACE_REMEMBER_CORRECTION_BOUNDED)||
		(correction_type == LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION)||
		(correction_type == LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION_BOUNDED))				
			return;
	
	FILE* f;
	std::string real_basename = "graph_" + basename + "_correction";
	std::string data_file_name = real_basename + ".gnp";
	std::string gnuplot_file_name = real_basename + ".plt";
	if ((f = fopen(("graph_correction/" + data_file_name).c_str(), "w")) == NULL)
		fprintf(stderr, "Cannot open graph_correction/%s\n", data_file_name.c_str());
	else
	{
		double p1, p2, n;
		bool calc_p12;
		bool use_exact_distribution = false;
		double* oldp = NULL;
		init_values(correction_type, p1, p2, n, oldp, calc_p12, use_exact_distribution);
		delete oldp;
		fprintf(f, "0.0 0.0\n");
		const double N = parameter.popSize / 2.0;
		for(int z = 0; z <= 1000; z++)
		{
			double t = (double)z/1000.0;
			double p = N*t;

			switch(correction_type)
			{
				case NO_CORRECTION:
				case NO_CORRECTION_EXACT_DISTRIBUTION:
					p = p/N;
					break;
				case NO_CORRECTION_BOUNDED:
				case NO_CORRECTION_EXACT_DISTRIBUTION_BOUNDED:
					{
						p = (double)p / N;
						double min = k;
						if(p < min)
							p = min;
						else if(p > 1.0 - min)
							p = 1.0 - min;
					}break;
					
					case LAPLACE_CORRECTION:
					case LAPLACE_CORRECTION_EXACT_DISTRIBUTION:						
						p = (p + k) / (N + 2.0*k);
						break;

					case EXACT_CORRECTION:
					case EXACT_CORRECTION_EXACT_DISTRIBUTION:
					case DIVERSITY_CORRECTION:
					case DIVERSITY_CORRECTION_EXACT_DISTRIBUTION:
					{
						p = p / N;
						double c = sqrt(1.0 - 4.0 * p * (1.0 - p) * n);
						double q;
						if(p < p1)
							q = 0.5 - c / 2.0;
						else if(p > p2)
							q = 0.5 + c / 2.0;
						else 
							q = 0.5;
						p = q;
					}break;
					case EXACT_CORRECTION_BOUNDED:
					case EXACT_CORRECTION_EXACT_DISTRIBUTION_BOUNDED:
					case DIVERSITY_CORRECTION_BOUNDED:
					case DIVERSITY_CORRECTION_EXACT_DISTRIBUTION_BOUNDED:	
					{
						p = p / N;
						double c = sqrt(1.0 - 4.0 * p * (1.0 - p) * n);
						double q;
						if(p < p1)
							q = 0.5 - c / 2.0;
						else if(p > p2)
							q = 0.5 + c / 2.0;
						else 
							q = 0.5;
						double min = k;
						if(q < min)
							q = min;
						else if(q > 1.0 - min)
							q = 1.0 - min;
						p = q;
					}break;
					case TEST_CORRECTION:
						p = 0.5;
					break;
					default:break;
				}
			fprintf(f, "%f %f\n", t, p);
		}
		fprintf(f, "1.0 1.0\n");		
		fclose(f);
	}

	if ((f = fopen(("graph_correction/t" + data_file_name).c_str(), "w")) == NULL)
		fprintf(stderr, "Cannot open graph_correction/%s\n", ("t" + data_file_name).c_str());	
	else
	{
		for(int z = 0; z <= 1000; z++)
			fprintf(f, "%f %f\n", (double)z/1000.0, (double)z/1000.0);
		fclose(f);
	}

	if ((f = fopen(gnuplot_file_name.c_str(), "w")) == NULL)
		fprintf(stderr, "Cannot open %s\n", gnuplot_file_name.c_str());	
	else
	{
		fprintf(f, "set style line 2 lt 2 lw 1\n");
		fprintf(f, "set style line 1 lt 1 lw 3\n");
		fprintf(f, "set xrange [0.0:1.0]\n");
		fprintf(f, "set yrange [0.0:1.0]\n");		
		fprintf(f, "set size ratio 1\n");
		
		fprintf(f, "set xlabel 'p'\nset ylabel 'q'\nset terminal png size 400,400\nset key right bottom\n");
		fprintf(f, "set output \"graph_correction/%s.png\"\n", real_basename.c_str());
		fprintf(f, "set title '%s (PopSize: %i", title.c_str(), parameter.popSize);
//		if((correction_type == LAPLACE_CORRECTION) || (correction_type == LAPLACE_CORRECTION_EXACT_DISTRIBUTION))
//			fprintf(f, ", alpha = %2f", k);
		fprintf(f, ")'\n");
		fprintf(f, "plot \"graph_correction/%s.gnp\" ti \"Corrected distribution\" with lines ls %i, ", real_basename.c_str(),1);
		fprintf(f, "\"graph_correction/t%s.gnp\" ti \"No correction\" with lines ls %i\n", real_basename.c_str(),2);
		fprintf(f, "\n");
	} 
	fclose(f);
}

