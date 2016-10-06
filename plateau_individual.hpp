#ifndef _PLATEAU_INDIVIDUAL_HPP
#define _PLATEAU_INDIVIDUAL_HPP

#include "individual.hpp"

class Plateau_Individual : public Individual
{
	public:
		Plateau_Individual();
		~Plateau_Individual();
		void reset();
		int calculateIndividualFitness();
		void printFitnessLandscape();

};

#endif

