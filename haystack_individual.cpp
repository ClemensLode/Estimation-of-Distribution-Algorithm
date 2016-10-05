#include "haystack_individual.hpp"

bool Haystack_Individual::solutionFound = false;

Haystack_Individual::Haystack_Individual():
	Individual()
{
	solutionFound = false;
}

Haystack_Individual::~Haystack_Individual()
{}

void Haystack_Individual::reset()
{
	solutionFound = false;
}

int Haystack_Individual::calculateIndividualFitness()
{
	if(solutionFound)
		fitness = maxLength;
	if(fitness == -1)
	{
		fitness = maxLength;
		for(int i = 0; i < maxLength; i++)
			if(bitstring[i] != goalString[i])
			{
				fitness = 0;
				break;
			}
		if(fitness == maxLength)
			solutionFound = 1;
	}
	return(fitness);	
}

void Haystack_Individual::printFitnessLandscape()
{
	double* fitness_array = new double[101];
	for(int i = 0; i <= 100; i++)
		fitness_array[i] = 0.0;
	fitness_array[71] = 1.0;
	printIndividualFitnessLandscape("haystack", "Needle in a Haystack landscape", "Search space", fitness_array, 100);
}
