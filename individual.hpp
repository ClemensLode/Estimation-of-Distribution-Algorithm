#ifndef _INDIVIDUAL_HPP
#define _INDIVIDUAL_HPP

#include <stdlib.h>
#include <stdio.h>
#include <string>

class Individual
{
	public:
		Individual();
		virtual ~Individual();

		virtual int calculateIndividualFitness() = 0;
		virtual void reset() = 0;
		void createOnEstimatedDistribution(double* p);
		virtual void printFitnessLandscape() = 0;
		void printIndividualFitnessLandscape(std::string basename, std::string title, std::string xlabel, double* fitness_array, int fitness_entries);

		int fitness;
// maxLength is problem size
		static int maxLength;
// k is parameter for onemax2
		static int k;
		static int run;
		
		int* bitstring;
		static int* goalString;
};

#endif

