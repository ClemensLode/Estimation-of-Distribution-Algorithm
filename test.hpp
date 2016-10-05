#ifndef _TEST_HPP
#define _TEST_HPP

#include "parameter.hpp"
class Test
{
	public:
		Test(const Parameter& my_parameter);
		~Test();
		void run();
		double* getResults() const;
	private:
		Parameter parameter;
		double* results;

// Number of best individuals to select to create the distribution
		double N;
};

#endif

