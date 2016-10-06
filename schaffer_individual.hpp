#ifndef _SCHAFFER_INDIVIDUAL_HPP
#define _SCHAFFER_INDIVIDUAL_HPP

#include "individual.hpp"

class Schaffer_Individual : public Individual
{
	public:
		Schaffer_Individual();
		~Schaffer_Individual();
		void reset();
		int calculateIndividualFitness();
		void printFitnessLandscape();

};

#endif

