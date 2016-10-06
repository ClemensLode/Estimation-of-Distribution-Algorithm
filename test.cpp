#include "test.hpp"


#include <stdlib.h>
#include <math.h>
#include <stdio.h>

Test::Test(const Parameter& my_parameter):
	parameter(my_parameter),
	fitnessResults(new double[parameter.testRuns * parameter.maxGenerations]),
	diversityResults(new double[parameter.testRuns * parameter.maxGenerations]),
	N((int)((double)parameter.popSize * parameter.selection))
{}

Test::~Test()
{}

//testen: gruenen bei 1111, 0000 und random

void Test::run()
{
// The distribution vector
	double* p = new double[parameter.maxLength];

	double p1, p2, n;
	bool use_exact_distribution = false;
	double* oldp = NULL;
	eCorrectionType correction_type = parameter.correction[parameter.currentCorrection];

	init_values(correction_type, p1, p2, n, use_exact_distribution);

	if(parameter.isLaplaceRemember(correction_type))
		oldp = new double[parameter.maxLength];

// Initialize Population
	Individual* individual[parameter.popSize];

// Reset generation, rounding error and distribution vector
	Individual::maxLength = parameter.maxLength;
	Individual::k = parameter.k;
	switch(parameter.problemType)
	{
		case FLAT_PROBLEM:				for(int i = 0; i < parameter.popSize; i++) individual[i] = new Flat_Individual();break;
		case NEEDLE_HAYSTACK_PROBLEM:	for(int i = 0; i < parameter.popSize; i++) individual[i] = new Haystack_Individual();break;
		case ONEMAX_PROBLEM:			for(int i = 0; i < parameter.popSize; i++) individual[i] = new OneMax_Individual();break;
		case ONEMAX_TWO_PEAKS_PROBLEM:	for(int i = 0; i < parameter.popSize; i++) individual[i] = new OneMax2_Individual();break;
		case LEADING_PROBLEM:			for(int i = 0; i < parameter.popSize; i++) individual[i] = new Leading_Individual();break;
		case SCHAFFER_PROBLEM:			for(int i = 0; i < parameter.popSize; i++) individual[i] = new Schaffer_Individual();break;
		case PLATEAU_PROBLEM:			for(int i = 0; i < parameter.popSize; i++) individual[i] = new Plateau_Individual();break;			
		case NK_PROBLEM:				for(int i = 0; i < parameter.popSize; i++) individual[i] = new NK_Individual();break;
		case PACKING_PROBLEM:			for(int i = 0; i < parameter.popSize; i++) individual[i] = new Packing_Individual();break;
		default:break;
	}

	for(int z = 0; z < parameter.testRuns; z++)
	{
		Individual::currentRunNumber = z;
		Individual::currentGoalString = &Individual::goalString[z * parameter.maxLength];
		
		printf(".");
		int generation = 0;
		for(int i = 0; i < parameter.maxLength; i++)
			p[i] = 0.5;
		
		for(int i = 0; i < parameter.popSize; i++)
		{
			individual[i]->reset();
			individual[i]->createOnEstimatedDistribution(p);
		}
	
		double best_fitness = 0.0;			
		while(generation < parameter.maxGenerations)
		{
// we need no sorting of fitness with a flat fitness landscape
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
			if(individual[0]->calculateIndividualFitness() > best_fitness)
				best_fitness = individual[0]->calculateIndividualFitness();
				
			if(correction_type == EXACT_TEST_CORRECTION)
			{
				fitnessResults[z * parameter.maxGenerations + generation] = 0.0;
				if(generation == 0)
					diversityResults[z * parameter.maxGenerations + generation] = 0.25;
				else
					diversityResults[z * parameter.maxGenerations + generation] = 
						diversityResults[z * parameter.maxGenerations + generation-1] * (double)((parameter.popSize*(N-1))/(double)(N*(parameter.popSize-1)));
			} else
			if(correction_type == TEST_CORRECTION)
			{
				fitnessResults[z * parameter.maxGenerations + generation] = 0.0;
				if(generation == 0)
					diversityResults[z * parameter.maxGenerations + generation] = 0.25;
				else
					diversityResults[z * parameter.maxGenerations + generation] = 
						diversityResults[z * parameter.maxGenerations + generation-1] * (double)(1.0 - 1.0 / (double)N);
			} else
			{
				double averageDiversity = 0.0;
				for(int i = 0; i < parameter.maxLength; i++)
					averageDiversity += p[i] * (1.0 - p[i]);
				averageDiversity /= (double)parameter.maxLength;
// record best fitness for graph drawing
				fitnessResults[z * parameter.maxGenerations + generation] = best_fitness;
				diversityResults[z * parameter.maxGenerations + generation] = averageDiversity;
			}
			generation++;
			if(parameter.isLaplaceRemember(correction_type))
			{
				for(int i = 0; i < parameter.maxLength; i++)
					oldp[i] = p[i];
			}

// Gather data from selected individuals
// Just UMDA, don't take distribution from last iteration into account
			for(int i = 0; i < parameter.maxLength; i++)
				p[i] = 0.0;		
			for(int i = N; i--;)
			{
				for(int j = 0; j < parameter.maxLength; j++)
					p[j] += individual[i]->bitstring[j];
			}
		
			for(int i = 0; i < parameter.maxLength; i++)
			{
				if(parameter.isNoCorrection(correction_type))
					p[i] = p[i] / (double)N;
				else if(correction_type == EDC_LRC_BC)
				{
					p[i] = distributionCorrection(p[i] / (double)N, p1, p2, n);
					p[i] = laplaceRememberCorrection(oldp[i], p[i] * (double)N);
				} 
				else if(parameter.isLaplaceRemember(correction_type))
					p[i] = laplaceRememberCorrection(oldp[i], p[i]);
				else if(parameter.isLaplace(correction_type))
					p[i] = laplaceCorrection(p[i]);
				else if(parameter.isDistributionCorrection(correction_type))
					p[i] = distributionCorrection(p[i] / (double)N, p1, p2, n);
				
				if(parameter.isAverageCorrection(correction_type))
				{
					p[i] = averageCorrection(oldp[i], p[i]);
				}	
				if(parameter.isBoundaryCorrection(correction_type))
					p[i] = boundaryCorrection(p[i]);
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

void Test::init_values(eCorrectionType correction_type, double &p1, double &p2, double &n, bool &use_exact_distribution)
{
	if(parameter.isExactDistribution(correction_type))
		use_exact_distribution = true;

	if(parameter.isDistributionCorrection(correction_type))
	{
		n = (double)((parameter.popSize - 1)*N) / (double)((N - 1)*parameter.popSize);
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

double Test::boundaryCorrection(double p)
{
	if(p < parameter.bounded_beta)
		return parameter.bounded_beta;
	else if(p > 1.0 - parameter.bounded_beta)
		return 1.0 - parameter.bounded_beta;
	else return p;
}

double Test::distributionCorrection(double p, double p1, double p2, double n)
{
	double c = sqrt(1.0 - 4.0 * p * (1.0 - p) * n);
	if(p < p1)
		return 0.5 - c / 2.0;
	else if(p > p2)
		return 0.5 + c / 2.0;
	else 
		return 0.5;
}

// Both Laplace correction methods need the raw number of '1's of the selected population as parameter
double Test::laplaceCorrection(double k)
{
	return ( k + parameter.laplace_alpha) / ((double)N + 2.0*parameter.laplace_alpha);
}

double Test::averageCorrection(double oldp, double p)
{
	return ((p + parameter.average_gamma * oldp) / (1.0 + parameter.average_gamma));
}

double Test::laplaceRememberCorrection(double oldp, double k)
{
	return ( k + 2.0 * oldp * parameter.laplace_alpha) / ((double)N + 2.0 * parameter.laplace_alpha); 
}

void Test::printDistributionCorrection(eCorrectionType correction_type)
{
	// laplace remember graph would need a 3d graph, TODO maybe implement later
//	if(parameter.isLaplaceRemember(correction_type))
//		return;
	
	FILE* f;
	std::string real_basename = "graph_" + Parameter::correctionBaseName[correction_type] + "_correction";
	std::string data_file_name = real_basename + ".gnp";
	std::string gnuplot_file_name = real_basename + ".plt";
	if ((f = fopen(("graph_correction/" + data_file_name).c_str(), "w")) == NULL)
		fprintf(stderr, "Cannot open graph_correction/%s\n", data_file_name.c_str());
	else
	{
		double p1, p2, n;
		bool use_exact_distribution = false;
		init_values(correction_type, p1, p2, n, use_exact_distribution);
		const int N = parameter.popSize / 2;
		
		for(int z = 0; z <= 100; z++)
		{
			double t = (double)z/100.0;
			double p = t*(double)N;
			if(parameter.isNoCorrection(correction_type))
				p = p / (double)N;
			else if(parameter.isLaplaceRemember(correction_type))				
				p = laplaceRememberCorrection(0.25, p);
			else if(parameter.isLaplace(correction_type))
				p = laplaceCorrection(p);
			else if(parameter.isDistributionCorrection(correction_type))
				p = distributionCorrection(p / (double)N, p1, p2, n);
			if(parameter.isBoundaryCorrection(correction_type))
				p = boundaryCorrection(p);

			fprintf(f, "%f %f\n", t, p);
		}

		fclose(f);
	}

	if ((f = fopen(("graph_correction/t" + data_file_name).c_str(), "w")) == NULL)
		fprintf(stderr, "Cannot open graph_correction/%s\n", ("t" + data_file_name).c_str());	
	else
	{
		for(int z = 0; z <= 100; z++)
			fprintf(f, "%f %f\n", (double)z/100.0, (double)z/100.0);
		fclose(f);
	}

	if ((f = fopen(("graph_correction/" + gnuplot_file_name).c_str(), "w")) == NULL)
		fprintf(stderr, "Cannot open %s\n", gnuplot_file_name.c_str());	
	else
	{
		fprintf(f, "set style line 2 lt 2 lw 1\n");
		fprintf(f, "set style line 1 lt 1 lw 3\n");
		fprintf(f, "set xrange [0.0:1.0]\n");
		fprintf(f, "set yrange [0.0:1.0]\n");
		fprintf(f, "set size ratio 1\n");
		
		fprintf(f, "set xlabel 'p'\nset ylabel 'q'\n");
		fprintf(f, "set terminal png size 400,400\nset key right bottom\n");
		fprintf(f, "set output \"%s.png\"\n", real_basename.c_str());
		fprintf(f, "plot \"%s.gnp\" ti \"Corrected distribution\" with lines ls %i, ", real_basename.c_str(),1);
		fprintf(f, "\"t%s.gnp\" ti \"No correction\" with lines ls %i\n", real_basename.c_str(),2);
		fprintf(f, "\n");
	} 
	fclose(f);
}

