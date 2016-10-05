#include "onemax2_individual.hpp"

void OneMax2_Individual::createOnEstimatedDistribution(double* p)
{
	fitness = -1;
	for(int i = 0; i < maxLength; i++)
		bitstring[i] = rand()%100 < 100.0*p[i] ? 1 : 0;
}

OneMax2_Individual::OneMax2_Individual(int max_length):
	Individual(max_length)
{
}

OneMax2_Individual::~OneMax2_Individual()
{}

int OneMax2_Individual::calculateIndividualFitness()
{
	if(fitness == -1)
	{
		fitness = 0;
		
		for(int i = 0; i < maxLength; i++)
			if(bitstring[i] == 1)
				fitness++;
		double t;
		if(2 * fitness < maxLength)
			fitness = maxLength - fitness;
		else if(2 * fitness > maxLength+1)
			fitness = (double)fitness  * (1.0 + k) - ((double)maxLength * k / 2.0);
		else fitness = maxLength / 2;
	}
	return(fitness);
}

