#ifndef _RESULT_HPP
#define _RESULT_HPP

#include "parameter.hpp"

class Result
{
	public:
		Result(const Parameter& my_parameter, int* fitness_results, double* diversity_results);
		~Result();

		void calculateAverage();
		
		Parameter parameter;
		
		int* fitness;
		double* diversity;

		double* fitness_q_14;
		double* fitness_q_34;
		double* fitness_average;

		double* diversity_q_14;
		double* diversity_q_34;
		double* diversity_average;
};

#endif

