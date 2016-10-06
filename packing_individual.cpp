#include "packing_individual.hpp"

Packing_Individual::Packing_Individual():
	Individual()
{}

Packing_Individual::~Packing_Individual()
{}

void Packing_Individual::reset()
{}

int Packing_Individual::calculateIndividualFitness()
{
	if(fitness == -1)
	{
		fitness = 0;
// if bitstring[i] == 1 then insert this item into the rucksack
		for(int i = 0; i < maxLength; i++)
			fitness+= bitstring[i] * currentGoalString[i];
		if(fitness > Packing_Individual::maxPackingSize)
			fitness = 0;//Packing_Individual::maxPackingSize - (fitness - Packing_Individual::maxPackingSize)*10;
	}
	return(fitness);	
}

void Packing_Individual::printFitnessLandscape()
{
}

int Packing_Individual::maxPackingSize = 0;
int Packing_Individual::maxItemSize = 0;
