#ifndef _TEST_HPP
#define _TEST_HPP

#include "parameter.hpp"
class Test
{
	public:
		Test(const Parameter& my_parameter);
		~Test();
		void run();
		double* getFitnessResults() const;
		double* getDiversityResults() const;
	private:
		Parameter parameter;
		double* fitnessResults;
		double* diversityResults;

// Number of best individuals to select to create the distribution
		double N;
};

#endif

