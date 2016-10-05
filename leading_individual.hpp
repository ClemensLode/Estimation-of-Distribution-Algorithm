#ifndef _LEADING_INDIVIDUAL_HPP
#define _LEADING_INDIVIDUAL_HPP

#include "individual.hpp"

class Leading_Individual : public Individual
{
	public:
		Leading_Individual(int max_length);
		~Leading_Individual();
		int calculateIndividualFitness();
		void createOnEstimatedDistribution(double* p);

};

#endif

