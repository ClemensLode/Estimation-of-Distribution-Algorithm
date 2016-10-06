#ifndef _PARAMETER_HPP
#define _PARAMETER_HPP

#include <string>

enum eProblemType
{
// flat fitness landscape
	FLAT_PROBLEM,
// flat fitness landscape with one exception
	NEEDLE_HAYSTACK_PROBLEM,
// fitness = number of correct bits
	ONEMAX_PROBLEM,
// special fitness function with two peaks
	ONEMAX_TWO_PEAKS_PROBLEM,
	
	LEADING_PROBLEM,
	
	SCHAFFER_PROBLEM,
	
	PLATEAU_PROBLEM,
	
	NK_PROBLEM,
	
	PACKING_PROBLEM,
	
	MAX_PROBLEM_TYPES
};

enum eCorrectionType
{
	NO_CORRECTION_RANDOM_DISTRIBUTION = 0,
	NO_CORRECTION_RANDOM_DISTRIBUTION_BOUNDARY_CORRECTION,
	NO_CORRECTION_EXACT_DISTRIBUTION,
	NO_CORRECTION_EXACT_DISTRIBUTION_BOUNDARY_CORRECTION,

	LAPLACE_CORRECTION_RANDOM_DISTRIBUTION,
	LAPLACE_CORRECTION_EXACT_DISTRIBUTION,

	LAPLACE_REMEMBER_CORRECTION_RANDOM_DISTRIBUTION,
	LAPLACE_REMEMBER_CORRECTION_RANDOM_DISTRIBUTION_BOUNDARY_CORRECTION,
	LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION,
	LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION_BOUNDARY_CORRECTION,

	RANDOM_DISTRIBUTION_CORRECTION,	
	RANDOM_DISTRIBUTION_CORRECTION_BOUNDARY_CORRECTION,
	EXACT_DISTRIBUTION_CORRECTION,	
	EXACT_DISTRIBUTION_CORRECTION_BOUNDARY_CORRECTION,
	
	EDC_LRC_BC,
	
	EXACT_DISTRIBUTION_AVERAGE_BOUNDARY_CORRECTION,
	EXACT_DISTRIBUTION_CORRECTION_AVERAGE_BOUNDARY_CORRECTION,
	
	TEST_CORRECTION, // just a reduction of variance by 1 - 1/n to compare
	EXACT_TEST_CORRECTION, // reduction of variance by M*(N-1) / (N * (M-1))
	
	MAX_CORRECTION_TYPES
	// bounded: set p = 1/N if p < 1/N and p = 1 - 1/N if p > 1 - 1/N
};

class Parameter
{
	public:
		Parameter();
		~Parameter();
		std::string print() const;
		void createNextParameter();
		const bool isStartConfiguration() const;

		static bool test_log_int(int& value, int& step_nr, int min, int max, int steps);
		static bool test_int(int& value, int min, int max, int steps);
		static bool test_double(double& value, double min, double max, int steps);
		static bool test_bool(bool& value, bool set, bool change);

		static std::string correctionBaseName[MAX_CORRECTION_TYPES];
		static std::string correctionString[MAX_CORRECTION_TYPES];
		static std::string problemDescription[MAX_PROBLEM_TYPES];
		static std::string problemBaseName[MAX_PROBLEM_TYPES];	

		static bool isNoCorrection(eCorrectionType correction_type);
		static bool isLaplace(eCorrectionType correction_type);
		static bool isLaplaceRemember(eCorrectionType correction_type);
		static bool isBoundaryCorrection(eCorrectionType correction_type);
		static bool isExactDistribution(eCorrectionType correction_type);
		static bool isDistributionCorrection(eCorrectionType correction_type);
		static bool isAverageCorrection(eCorrectionType correction_type);
		eProblemType problemType;

// number of similar test runs, 24 in order to fit on a standard windows terminal
		int testRuns;
		int minTestRuns, maxTestRuns, testRunsSteps;
		void setTestRuns(int min, int max, int steps);
		
		int popSize;
		int popSizeStepNr;
		int minPopSize, maxPopSize, popSizeSteps;
		void setPopSize(int min, int max, int steps);
				
		int maxGenerations;
		int minMaxGenerations, maxMaxGenerations, maxGenerationsSteps;
		void setMaxGenerations(int min, int max, int steps);
				
// length of bitstring for OneMax
		int maxLength;
		int minMaxLength, maxMaxLength, maxLengthSteps;
		void setMaxLength(int min, int max, int steps);
	
// const for OneMax Two peaks and NK landscape
		int k;
		int mink, maxk;
		int kSteps;
		void setk(int min, int max, int steps);

// const for Laplace
		double laplace_alpha;
		double minlaplace_alpha, maxlaplace_alpha;
		int laplace_alphaSteps;
		void setLaplaceAlpha(double min, double max, int steps);

// const for Bounded
		double bounded_beta;
		double minbounded_beta, maxbounded_beta;
		int bounded_betaSteps;
		void setBoundedBeta(double min, double max, int steps);
		
// const for Average
		double average_gamma;
		double minaverage_gamma, maxaverage_gamma;
		int average_gammaSteps;
		void setAverageGamma(double min, double max, int steps);
	
// Percentage of individuals to select for the distribution
		double selection;
		double minselection, maxselection;
		int selectionSteps;
		void setSelection(double min, double max, int steps);
				
		bool randomOneMax;
		bool randomOneMaxSet, randomOneMaxChange;
		void setRandomOneMax(bool set, bool change);
		
		bool useSamplingErrorReduction;
		bool useSamplingErrorReductionSet, useSamplingErrorReductionChange;
		void setUseSamplingErrorReduction(bool set, bool change);

// These options are for the cases where Sampling Error Reduction is not used, only use one at a time
// 0: Laplace, 1: No correction, 2: Non-Zero correction
// No correction: Simply divide the number of occurences of '1' by the sample size
// Non-Zero correction: Same as No Correction but if p is 0.0 or 1.0 change it to 1.0/N or 1.0 - 1.0/N

		int currentCorrection;
		eCorrectionType correction[MAX_CORRECTION_TYPES];
		int correctionCount;
		void testCorrectionType(eCorrectionType set);
		int getCorrectionTypeCount() const;
};

#endif

