#include "leading_individual.hpp"

void Leading_Individual::createOnEstimatedDistribution(double* p)
{
	fitness = -1;
	for(int i = 0; i < maxLength; i++)
		bitstring[i] = rand()%100 < 100.0*p[i] ? 1 : 0;
}

Leading_Individual::Leading_Individual(int max_length):
	Individual(max_length)
{
}

Leading_Individual::~Leading_Individual()
{}

int Leading_Individual::calculateIndividualFitness()
{
	if(fitness == -1)
	{
		fitness = 0;
		for(int i = 0; i < maxLength; i++)
			if(bitstring[i] == 1)
				fitness++;
			else break;
	}
	return(fitness);
}

