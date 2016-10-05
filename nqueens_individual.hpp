#ifndef _NQUEENS_INDIVIDUAL_HPP
#define _NQUEENS_INDIVIDUAL_HPP

#include "individual.hpp"

class NQueens_Individual : public Individual
{
	public:
		NQueens_Individual(int max_length);
		~NQueens_Individual();
		int calculateIndividualFitness();
		void createOnEstimatedDistribution(double* p);
};

#endif

