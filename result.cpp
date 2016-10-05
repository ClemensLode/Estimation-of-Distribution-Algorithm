#include "result.hpp"

Result::Result(const Parameter& my_parameter, double* results):
	parameter(my_parameter),
	fitness(results),
	q_14(new double[parameter.maxGenerations]),
	q_34(new double[parameter.maxGenerations]),
	average(new double[parameter.maxGenerations])
{}

Result::~Result()
{
	delete fitness;
	delete q_14;
	delete q_34;
	delete average;
}
#include <stdio.h>

void Result::calculateAverage()
{
	for(int k = 0; k < parameter.maxGenerations; k++)
	{
		for(int l = 0; l < parameter.testRuns; l++)
			for(int m = 0; m < l; m++)
				if(fitness[l * parameter.maxGenerations + k] > fitness[m * parameter.maxGenerations + k])
				{
					double t = fitness[l * parameter.maxGenerations + k];
					fitness[l * parameter.maxGenerations + k] = fitness[m * parameter.maxGenerations + k];
					fitness[m * parameter.maxGenerations + k] = t;
				}
		average[k] = 0.0;
		int m = 0;
		for(int l = parameter.testRuns * 0.25; l < parameter.testRuns * 0.75 ; l++)
		{
			average[k] += fitness[l * parameter.maxGenerations + k];
			m++;
		}
		average[k] /= m;

		q_14[k] = 0.0;
		q_34[k] = 0.0;
		m = 0;
		for(int l = 0; l < parameter.testRuns * 0.24 ; l++)
		{
			m++;
			q_14[k] += fitness[l * parameter.maxGenerations + k];
		}
		q_14[k] /= m;

		m = 0;
		for(int l = parameter.testRuns * 0.76; l < parameter.testRuns; l++)
		{
			m++;
			q_34[k] += fitness[l * parameter.maxGenerations + k];
		}
		q_34[k] /= m;

/*		if(parameter.testRuns % 4 == 0)
		{
			q_14[k] = fitness[(int)(0.25 * parameter.maxGenerations) + k];
			q_34[k] = fitness[(int)(0.75 * parameter.maxGenerations) + k];
		}
		else
		{
			q_14[k] = 0.0;
			for(int l = parameter.testRuns * 0.25; l <= parameter.testRuns * 0.25 + 1; l++)
				q_14[k] += fitness[l * parameter.maxGenerations + k];
			q_14[k] /= 2.0;
			q_34[k] = 0.0;
			for(int l = parameter.testRuns * 0.75; l <= parameter.testRuns * 0.75 + 1; l++)
				q_34[k] += fitness[l * parameter.maxGenerations + k];
			q_34[k] /= 2.0;
		}*/
	}
}

