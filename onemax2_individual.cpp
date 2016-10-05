#include "onemax2_individual.hpp"

OneMax2_Individual::OneMax2_Individual():
	Individual()
{}

OneMax2_Individual::~OneMax2_Individual()
{}

void OneMax2_Individual::reset()
{}

int OneMax2_Individual::calculateIndividualFitness()
{
	if(fitness == -1)
	{
		fitness = 0;
		for(int i = 0; i < maxLength; i++)
			if(bitstring[i] == 1)
				fitness++;
// left side			
		if(fitness < maxLength / 2)
			fitness = maxLength - fitness; // only '0's count
// right side
		else 
			fitness = (int)((double)(fitness * k)/100.0);
	}
	return(fitness);
}

void OneMax2_Individual::printFitnessLandscape()
{
	double* fitness_array = new double[101];
	for(int i = 0; i <= 50; i++)
		fitness_array[i] = 50 - i;
	for(int i = 0; i < 50; i++)
		fitness_array[i+51] = (double)i*1.2;
	printIndividualFitnessLandscape("onemax2", "OneMax two peaks fitness landscape (alpha = 1.2)", "Number of 1s", fitness_array, 101);
}
