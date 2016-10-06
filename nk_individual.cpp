#include "NK_Individual.hpp"
#include <math.h>

extern double evalString(int *string, int run);

NK_Individual::NK_Individual():
	Individual()
{}

NK_Individual::~NK_Individual()
{}

void NK_Individual::reset()
{}

int NK_Individual::calculateIndividualFitness()
{
	if(fitness == -1)
	{
		fitness = (int)(1000.0f * evalString(bitstring, run));
//		printf("%i\n", fitness);		
	}
	return(fitness);	
}

void NK_Individual::printFitnessLandscape()
{
	double* fitness_array = new double[101];
	for(int i = 0; i <= 100; i++)
		fitness_array[i] = i;
	printIndividualFitnessLandscape("nk", "NK fitness landscape", "bits", fitness_array, 101);
}
