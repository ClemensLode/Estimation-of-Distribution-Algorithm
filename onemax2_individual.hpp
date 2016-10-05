#ifndef _ONEMAX2_INDIVIDUAL_HPP
#define _ONEMAX2_INDIVIDUAL_HPP

#include "individual.hpp"

class OneMax2_Individual : public Individual
{
	public:
		OneMax2_Individual();
		~OneMax2_Individual();
		void reset();
		int calculateIndividualFitness();
		void printFitnessLandscape();
};

#endif

