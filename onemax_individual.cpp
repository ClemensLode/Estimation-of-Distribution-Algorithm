#include "onemax_individual.hpp"

void OneMax_Individual::createOnEstimatedDistribution(double* p)
{
	fitness = -1;
	for(int i = 0; i < maxLength; i++)
		bitstring[i] = rand()%100 < 100.0*p[i] ? 1 : 0;
}

OneMax_Individual::OneMax_Individual(int max_length):
	Individual(max_length)
{}

OneMax_Individual::~OneMax_Individual()
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

