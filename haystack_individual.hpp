#ifndef _HAYSTACK_INDIVIDUAL_HPP
#define _HAYSTACK_INDIVIDUAL_HPP

#include "individual.hpp"

class Haystack_Individual : public Individual
{
	public:
		Haystack_Individual();
		~Haystack_Individual();
		void reset();
		int calculateIndividualFitness();
		void printFitnessLandscape();

		static bool solutionFound;
};

#endif

