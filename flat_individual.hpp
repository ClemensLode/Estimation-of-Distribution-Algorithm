#ifndef _FLAT_INDIVIDUAL_HPP
#define _FLAT_INDIVIDUAL_HPP

#include "individual.hpp"

class Flat_Individual : public Individual
{
	public:
		Flat_Individual();
		~Flat_Individual();
		void reset();
		int calculateIndividualFitness();
		void printFitnessLandscape();
};

#endif

