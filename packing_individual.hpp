#ifndef _PACKING_INDIVIDUAL_HPP
#define _PACKING_INDIVIDUAL_HPP

#include "individual.hpp"

class Packing_Individual : public Individual
{
	public:
		Packing_Individual();
		~Packing_Individual();
		void reset();
		int calculateIndividualFitness();
		void printFitnessLandscape();
		int* item_size;

		static int maxPackingSize;
		static int maxItemSize;
};

#endif

