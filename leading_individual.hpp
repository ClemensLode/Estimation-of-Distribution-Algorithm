#ifndef _LEADING_INDIVIDUAL_HPP
#define _LEADING_INDIVIDUAL_HPP

#include "individual.hpp"

class Leading_Individual : public Individual
{
	public:
		Leading_Individual();
		~Leading_Individual();
		void reset();
		int calculateIndividualFitness();
		void printFitnessLandscape();

};

#endif

