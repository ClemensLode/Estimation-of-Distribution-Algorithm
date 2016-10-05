#ifndef _RESULT_HPP
#define _RESULT_HPP

#include "parameter.hpp"

class Result
{
	public:
		Result(const Parameter& my_parameter, double* results);
		~Result();

		void calculateAverage();
		
		Parameter parameter;
		double* fitness;

		double* q_14;
		double* q_34;
		double* average;
};

#endif

