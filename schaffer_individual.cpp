#include "schaffer_individual.hpp"
#include <math.h>

Schaffer_Individual::Schaffer_Individual():
	Individual()
{}

Schaffer_Individual::~Schaffer_Individual()
{}

void Schaffer_Individual::reset()
{}

int Schaffer_Individual::calculateIndividualFitness()
{
	if(fitness == -1)
	{
		float step = 600.0/pow(2,maxLength);
		float value = -300.0;
		int step_nr;
		fitness = 0;
		for(int i = 0; i < maxLength; i++)
			value += step * pow(2,i) * (float)bitstring[i];
		fitness = (int)(1000.0f * (1.0f + (cos(value)/(1.0f+0.001f*value*value))));
	}
	return(fitness);	
}

void Schaffer_Individual::printFitnessLandscape()
{
	double* fitness_array = new double[101];
	for(int i = 0; i <= 100; i++)
		fitness_array[i] = i;
	printIndividualFitnessLandscape("schaffer", "Schaffer fitness landscape", "bits", fitness_array, 101);
}
