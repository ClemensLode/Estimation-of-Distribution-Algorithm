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

class Test
{
	public:
		Test(const Parameter& my_parameter);
		~Test();
		void run();
		double* getFitnessResults() const;
		double* getDiversityResults() const;
		void printDistributionCorrection(std::string basename, std::string title, eCorrectionType correction_type, double k);
	private:
		Parameter parameter;
		double* fitnessResults;
		double* diversityResults;

// Number of best individuals to select to create the distribution
		double N;
		void init_values(eCorrectionType correction_type, double &p1, double &p2, double &n, double* oldp, bool &calc_p12, bool &use_exact_distribution);
};

#endif

