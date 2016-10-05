#ifndef _ONEMAX_INDIVIDUAL_HPP
#define _ONEMAX_INDIVIDUAL_HPP

#include "individual.hpp"

class OneMax_Individual : public Individual
{
	public:
		OneMax_Individual(int max_length);
		~OneMax_Individual();
		int calculateIndividualFitness();
		void createOnEstimatedDistribution(double* p);

};

#endif

