#include "plateau_individual.hpp"

Plateau_Individual::Plateau_Individual():
	Individual()
{}

Plateau_Individual::~Plateau_Individual()
{}

void Plateau_Individual::reset()
{}

int Plateau_Individual::calculateIndividualFitness()
{
	if(fitness == -1)
	{
		fitness = 0;
		for(int i = 0; i < maxLength-2; i+=3)
			if((bitstring[i] == bitstring[i+1])&&
			   (bitstring[i+1] == bitstring[i+2])&&
			   (bitstring[i+2] == 1))
				fitness++;
	}
	return(fitness);	
}

void Plateau_Individual::printFitnessLandscape()
{
	double* fitness_array = new double[101];
	for(int i = 0; i <= 100; i++)
		fitness_array[i] = i;
	printIndividualFitnessLandscape("plateau", "Plateau fitness landscape", "number of triplets", fitness_array, 101);
}
