#include "onemax_individual.hpp"

OneMax_Individual::OneMax_Individual():
	Individual()
{}

OneMax_Individual::~OneMax_Individual()
{}

void OneMax_Individual::reset()
{}

int OneMax_Individual::calculateIndividualFitness()
{
	if(fitness == -1)
	{
		fitness = 0;
		for(int i = 0; i < maxLength; i++)
			if(bitstring[i] == goalString[i])
				fitness++;
	}
	return(fitness);	
}

void OneMax_Individual::printFitnessLandscape()
{
	double* fitness_array = new double[101];
	for(int i = 0; i <= 100; i++)
		fitness_array[i] = i;
	printIndividualFitnessLandscape("onemax", "OneMax fitness landscape", "number of 1s", fitness_array, 101);
}
