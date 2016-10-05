#include "result.hpp"

Result::Result(const Parameter& my_parameter, double* fitness_results, double* diversity_results):
	parameter(my_parameter),
	fitness(fitness_results),
	diversity(diversity_results),
	fitness_q_14(new double[parameter.maxGenerations]),
	fitness_q_34(new double[parameter.maxGenerations]),
	fitness_average(new double[parameter.maxGenerations]),
	
	diversity_q_14(new double[parameter.maxGenerations]),
	diversity_q_34(new double[parameter.maxGenerations]),
	diversity_average(new double[parameter.maxGenerations])

{}

Result::~Result()
{
	delete fitness;
	delete diversity;
	
	delete fitness_q_14;
	delete fitness_q_34;
	delete fitness_average;

	delete diversity_q_14;
	delete diversity_q_34;
	delete diversity_average;
}
#include <stdio.h>

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
		fitness_average[k] /= m;
		diversity_average[k] /= m;

		fitness_q_14[k] = 0.0;
		fitness_q_34[k] = 0.0;
		diversity_q_14[k] = 0.0;
		diversity_q_34[k] = 0.0;
	
		m = 0;
		for(int l = 0; l < parameter.testRuns * 0.25 ; l++)
		{
			m++;
			fitness_q_14[k] += fitness[l * parameter.maxGenerations + k];
			fitness_q_34[k] += fitness[(parameter.testRuns - l - 1) * parameter.maxGenerations + k];
			
			diversity_q_14[k] += diversity[l * parameter.maxGenerations + k];
			diversity_q_34[k] += diversity[(parameter.testRuns - l - 1) * parameter.maxGenerations + k];
		}
		fitness_q_14[k] /= m;
		fitness_q_34[k] /= m;
		diversity_q_14[k] /= m;
		diversity_q_34[k] /= m;
	}
}

