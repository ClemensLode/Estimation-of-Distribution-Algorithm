#include "nqueens_individual.hpp"

void NQueens_Individual::createOnEstimatedDistribution(double* p)
{
// vector p:
// row (p[x + 0 .. maxLength]): 	
	fitness = -1;
	for(int i = 0; i < maxLength; i++)
	{
		int max = 0;
		int max_value = 0;
		for(int j = 0; j < maxLength; j++)
		{
			int a = (int)((rand()%10000) * p[i*maxLength + j]);
			if(a > max_value)
			{
				max_value = a;
				max = j;
			}
		}
//=> set queen at [i | max]
		bitstring[i] = max;

		for(int j = (i+1); j < maxLength; j++)
		{
			double value = p[j*maxLength + max];
			p[j*maxLength + max] = 0.0;
			for(int k = 0; k < maxLength; k++)
				if(k!=max)
					p[j*maxLength + k] += (value / (double)maxLength);
		}
	}
}

NQueens_Individual::NQueens_Individual(int max_length):
	Individual(max_length)
{}

NQueens_Individual::~NQueens_Individual()
{}

/*
7 5 3 1 6 0 2 4 

- - - - - - - x
- - - - - x - -
- - - x - - - -
- x - - - - - -
- - - - - - x -
x - - - - - - - 
- - x - - - - -
- - - - x - - - 
*/

int NQueens_Individual::calculateIndividualFitness()
{
	if(fitness == -1)
	{
		fitness = maxLength;
		for(int i = 0; i < maxLength; i ++)
			for(int j = 0; j < i; j ++)
			{
				if( (bitstring[i] == bitstring[j]) || ( abs(i - j) == abs(bitstring[i] - bitstring[j])) )
				{
					fitness--;
					printf("%i, %i, (abs(%i - %i) == %i)\n", bitstring[i], bitstring[j], i, j, abs(i - j));
				}
			}
	}
	return(fitness);
}


