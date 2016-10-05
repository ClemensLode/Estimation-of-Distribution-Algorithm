#ifndef _HAYSTACK_INDIVIDUAL_HPP
#define _HAYSTACK_INDIVIDUAL_HPP

#include "individual.hpp"

class Haystack_Individual : public Individual
{
	public:
		Haystack_Individual(int max_length);
		~Haystack_Individual();
		int calculateIndividualFitness();
		void createOnEstimatedDistribution(double* p);

		static bool solutionFound;
};

#endif

