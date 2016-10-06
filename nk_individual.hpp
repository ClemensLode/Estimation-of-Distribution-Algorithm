#ifndef _NK_INDIVIDUAL_HPP
#define _NK_INDIVIDUAL_HPP

#include "individual.hpp"

class NK_Individual : public Individual
{
	public:
		NK_Individual();
		~NK_Individual();
		void reset();
		int calculateIndividualFitness();
		void printFitnessLandscape();
};

#endif

