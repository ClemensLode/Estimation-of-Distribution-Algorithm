#include "haystack_individual.hpp"

bool Haystack_Individual::solutionFound = false;

void Haystack_Individual::createOnEstimatedDistribution(double* p)
{
	fitness = -1;
	for(int i = 0; i < maxLength; i++)
		bitstring[i] = rand() < RAND_MAX*p[i] ? 1 : 0;
}
Haystack_Individual::Haystack_Individual(int max_length):
	Individual(max_length)
{
	solutionFound = false;
}

Haystack_Individual::~Haystack_Individual()
{}


int Haystack_Individual::calculateIndividualFitness()
{
	return 0;
	/*
	// ?
//	if(solutionFound)
//		fitness = maxLength;
	if(fitness == -1)
	{
		fitness = maxLength;
		for(int i = 0; i < maxLength; i++)
			if(bitstring[i] != goalString[i])
			{
				fitness = 0;
				break;
			}
//		if(fitness == maxLength)
//			solutionFound = 1;
	}
	fitness = 0;
	return(fitness);	*/
}


