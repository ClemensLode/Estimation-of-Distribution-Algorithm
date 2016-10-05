#ifndef _PARAMETER_HPP
#define _PARAMETER_HPP

#include <string>

enum eProblemType
{
	NEEDLE_HAYSTACK_PROBLEM,

	ONEMAX_PROBLEM,
	NQUEENS_PROBLEM
};

enum eCorrectionType
{
	LAPLACE_CORRECTION = 0,
	NON_ZERO_CORRECTION = 1,
	NO_CORRECTION = 2
};


class Parameter
{
	public:
		Parameter();
		~Parameter();
		std::string print() const;
		void createNextParameter();
		const bool isStartConfiguration() const;


		eProblemType problemType;
		
// number of similar test runs, 24 in order to fit on a standard windows terminal
		int testRuns;
		int minTestRuns, maxTestRuns, testRunsSteps;
		void setTestRuns(int min, int max, int steps);
		
		int popSize;
		int minPopSize, maxPopSize, popSizeSteps;
		void setPopSize(int min, int max, int steps);
				
		int maxGenerations;
		int minMaxGenerations, maxMaxGenerations, maxGenerationsSteps;
		void setMaxGenerations(int min, int max, int steps);
				
// length of bitstring for OneMax
		int maxLength;
		int minMaxLength, maxMaxLength, maxLengthSteps;
		void setMaxLength(int min, int max, int steps);
		
// Percentage of individuals to select for the distribution
		double selection;
		double minSelection, maxSelection;
		int selectionSteps;
		void setSelection(double min, double max, int steps);
				
		bool randomOneMax;
		bool randomOneMaxSet, randomOneMaxChange;
		void setRandomOneMax(bool set, bool change);
		
		bool useSamplingErrorReduction;
		bool useSamplingErrorReductionSet, useSamplingErrorReductionChange;
		void setUseSamplingErrorReduction(bool set, bool change);

                bool rememberAndReuseSamplingError;
                bool rememberAndReuseSamplingErrorSet, rememberAndReuseSamplingErrorChange;
                void setRememberAndReuseSamplingError(bool set, bool change);
		
		bool useExactRandomDistribution;
		bool useExactRandomDistributionSet, useExactRandomDistributionChange;
		void setUseExactRandomDistribution(bool set, bool change); 

// These options are for the cases where Sampling Error Reduction is not used, only use one at a time
// 0: Laplace, 1: No correction, 2: Non-Zero correction
// No correction: Simply divide the number of occurences of '1' by the sample size
// Non-Zero correction: Same as No Correction but if p is 0.0 or 1.0 change it to 1.0/N or 1.0 - 1.0/N
		eCorrectionType correction;
		eCorrectionType correctionSet;
		bool correctionChange;
		void setCorrectionType(eCorrectionType set, bool change);
};

#endif
