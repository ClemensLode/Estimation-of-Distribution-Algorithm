#ifndef _TEST_HPP
#define _TEST_HPP

#include "parameter.hpp"

#include "flat_individual.hpp"
#include "onemax_individual.hpp"
#include "onemax2_individual.hpp"
#include "haystack_individual.hpp"
#include "leading_individual.hpp"
#include "schaffer_individual.hpp"
#include "plateau_individual.hpp"
#include "nk_individual.hpp"
#include "packing_individual.hpp"

class Test
{
	public:
		Test(const Parameter& my_parameter);
		~Test();
		void run();
		double* getFitnessResults() const;
		double* getDiversityResults() const;
		void printDistributionCorrection(eCorrectionType correction_type);
		
		double boundaryCorrection(double p);
		double distributionCorrection(double p, double p1, double p2, double n);
// Both Laplace correction methods need the raw number of '1's of the selected population as parameter
		double laplaceCorrection(double k);
		double laplaceRememberCorrection(double oldp, double k);
		double laplaceRememberDistributionCorrection(double oldp, double k);
	private:
		Parameter parameter;
		double* fitnessResults;
		double* diversityResults;

// Number of best individuals to select to create the distribution
		int N;
		void init_values(eCorrectionType correction_type, double &p1, double &p2, double &n, bool &use_exact_distribution);
};

#endif

