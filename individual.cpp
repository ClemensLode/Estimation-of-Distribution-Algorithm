#include "individual.hpp"


Individual::Individual(int max_length):
	fitness(-1),
	maxLength(max_length),
	bitstring(new int[max_length])
{}

Individual::~Individual()
{
	delete bitstring;
}

int* Individual::goalString = 0;
int Individual::bestFitness = 0;

