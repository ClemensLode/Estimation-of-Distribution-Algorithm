#include "result.hpp"

Result::Result(const Parameter& my_parameter, double* fitness_results, double* diversity_results):
	parameter(my_parameter),
	fitness(fitness_results),
	diversity(diversity_results),
	fitness_average(new double[parameter.maxGenerations]),
	
	diversity_average(new double[parameter.maxGenerations])

{}

Result::~Result()
{
	delete fitness;
	delete diversity;
	delete fitness_average;
	delete diversity_average;
}

void Result::calculateAverage()
{
	for(int k = 0; k < parameter.maxGenerations; k++)
	{
		for(int l = 0; l < parameter.testRuns - 2; l++)
			for(int m = 0; m < parameter.testRuns - l - 1; m++)
				// sort
				if(fitness[m * parameter.maxGenerations + k] < fitness[(m+1) * parameter.maxGenerations + k])
				{
					double t = fitness[m * parameter.maxGenerations + k];
					fitness[m * parameter.maxGenerations + k] = fitness[(m+1) * parameter.maxGenerations + k];
					fitness[(m+1) * parameter.maxGenerations + k] = t;
				}
		
		for(int l = 0; l < parameter.testRuns - 2; l++)
			for(int m = 0; m < parameter.testRuns - l - 1; m++)
				// sort
				if(fitness[m * parameter.maxGenerations + k] < fitness[(m+1) * parameter.maxGenerations + k])
				{
					double t = diversity[m * parameter.maxGenerations + k];
					diversity[m * parameter.maxGenerations + k] = diversity[(m+1) * parameter.maxGenerations + k];
					diversity[(m+1) * parameter.maxGenerations + k] = t;				
				}

		fitness_average[k] = 0.0;
		diversity_average[k] = 0.0;
		int m = 0;
		double tt;
		for(int l = 0; l < parameter.testRuns; l++)
		{
			fitness_average[k] += fitness[l * parameter.maxGenerations + k];
			diversity_average[k] += diversity[l * parameter.maxGenerations + k];
			m++;
		}
		fitness_average[k] /= (double)m;
		diversity_average[k] /= (double)m;
	}
}

