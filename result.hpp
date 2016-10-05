#ifndef _RESULT_HPP
#define _RESULT_HPP

#include "parameter.hpp"

class Result
{
	public:
		Result(const Parameter& my_parameter, double* fitness_results, double* diversity_results);
		~Result();

		void calculateAverage();
		
		Parameter parameter;
		
		double* fitness;
		double* diversity;

		double* fitness_average;
		double* diversity_average;
};

#endif

