#ifndef _ONEMAX_INDIVIDUAL_HPP
#define _ONEMAX_INDIVIDUAL_HPP

#include "individual.hpp"

class OneMax_Individual : public Individual
{
	public:
		OneMax_Individual();
		~OneMax_Individual();
		void reset();
		int calculateIndividualFitness();
		void printFitnessLandscape();

};

#endif

