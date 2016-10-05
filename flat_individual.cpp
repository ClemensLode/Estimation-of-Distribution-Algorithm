#include "flat_individual.hpp"

Flat_Individual::Flat_Individual() :
	Individual()
{}

Flat_Individual::~Flat_Individual()
{}

void Flat_Individual::reset()
{}

int Flat_Individual::calculateIndividualFitness()
{
	fitness = 0;
	return(fitness);	
}

void Flat_Individual::printFitnessLandscape()
{
	double* fitness_array = new double[101];
	for(int i = 0; i <= 100; i++)
		fitness_array[i] = 1.0;
	printIndividualFitnessLandscape("flat", "Flat fitness landscape", "Search space", fitness_array, 100);
}
