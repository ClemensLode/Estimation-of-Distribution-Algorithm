#ifndef _INDIVIDUAL_HPP
#define _INDIVIDUAL_HPP

#include <stdlib.h>
#include <stdio.h>

class Individual
{
	public:
		Individual(int max_length);
		virtual ~Individual();

		virtual int calculateIndividualFitness() = 0;
		virtual void createOnEstimatedDistribution(double* p) = 0;

//	protected:			
		int fitness;
// maxLength is problem size
		int maxLength;
		
		int* bitstring;
		static int* goalString;
};

#endif

