#ifndef _ONEMAX2_INDIVIDUAL_HPP
#define _ONEMAX2_INDIVIDUAL_HPP

#include "individual.hpp"

class OneMax2_Individual : public Individual
{
	public:
		OneMax2_Individual(int max_length);
		~OneMax2_Individual();
		int calculateIndividualFitness();
		void createOnEstimatedDistribution(double* p);
		double k;
};

#endif

