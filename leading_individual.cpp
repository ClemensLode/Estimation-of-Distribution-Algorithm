#include "leading_individual.hpp"

Leading_Individual::Leading_Individual():
	Individual()
{}

Leading_Individual::~Leading_Individual()
{}

void Leading_Individual::reset()
{}

int Leading_Individual::calculateIndividualFitness()
{
	if(fitness == -1)
	{
		fitness = 0;
		int i = 0;
		while((i < maxLength) && (bitstring[i] == goalString[i]))
		//1))
		{
			fitness++;
			i++;
		}
	}
	return(fitness);	
}

void Leading_Individual::printFitnessLandscape()
{
	double* fitness_array = new double[101];
	for(int i = 0; i <= 100; i++)
		fitness_array[i] = 0.0;
	fitness_array[71] = 1.0;
	printIndividualFitnessLandscape("leading", "Leading 1s fitness landscape", "Number of leading 1s", fitness_array, 100);
}
