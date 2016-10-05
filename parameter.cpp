#include "parameter.hpp"

#include <sstream>

bool test_bool(bool& value, bool set, bool change)
{
	if(change)
	{
		value = !value;
		if(value != set)
			return true;
	}
	return false;
}


bool test_double(double& value, double min, double max, int steps)
{
	if(steps > 1)
	{
		value += (max - min) / (double)(steps-1);
		if(value <= max)
			return true;
		else value = min;
	}
	return false;
}

bool test_int(int& value, int min, int max, int steps)
{
	if(steps > 1)
	{
		value += (int)((max - min) / (double)(steps-1));
		if(value <= max)
			return true;
		else value = min;
	}
	return false;
}


Parameter::Parameter()
{}

Parameter::~Parameter()
{}

const bool Parameter::isStartConfiguration() const
{
	return( testRuns == minTestRuns && popSize == minPopSize && maxGenerations == minMaxGenerations && maxLength == minMaxLength && 
			selection == minSelection && randomOneMax == randomOneMaxSet && 
			useSamplingErrorReduction == useSamplingErrorReductionSet &&
			rememberAndReuseSamplingError == rememberAndReuseSamplingErrorSet &&
			useExactRandomDistribution == useExactRandomDistributionSet && 
			correction == correctionSet );
}

std::string Parameter::print() const
{
	std::ostringstream os;
	os << "Runs: " << testRuns << " Size:" << popSize << " Generations:" << maxGenerations << " Length:" << maxLength << " Selection:" << selection << " Random goalstring:" << randomOneMax << " Corrected distribution:" << useSamplingErrorReduction << " Exact Random Distribution:" << useExactRandomDistribution << " Remember Remainder:" << rememberAndReuseSamplingError << " Correction:" << correction;
	return os.str();
}

void Parameter::createNextParameter()
{

	if(correctionChange)
	{
		switch(correction)
		{
			case LAPLACE_CORRECTION: correction = NON_ZERO_CORRECTION;break;
			case NON_ZERO_CORRECTION: correction = NO_CORRECTION;break;
			case NO_CORRECTION: correction = LAPLACE_CORRECTION;break;
			default:break;
		}
		if(correction != correctionSet)
			return;
	}
	
	if(test_bool(useExactRandomDistribution, useExactRandomDistributionSet, useExactRandomDistributionChange))
		return;

        if(test_bool(rememberAndReuseSamplingError, rememberAndReuseSamplingErrorSet, rememberAndReuseSamplingErrorChange))
                return;
		
	if(test_bool(randomOneMax, randomOneMaxSet, randomOneMaxChange))
		return;

	if(test_double(selection, minSelection, maxSelection, selectionSteps))
		return;

	if(test_int(maxLength, minMaxLength, maxMaxLength, maxLengthSteps))
		return;
	
	if(test_int(maxGenerations, minMaxGenerations, maxMaxGenerations, maxGenerationsSteps))
		return;
		
	if(test_int(popSize, minPopSize, maxPopSize, popSizeSteps))
		return;
		
	if(test_int(testRuns, minTestRuns, maxTestRuns, testRunsSteps))
		return;
	if(test_bool(useSamplingErrorReduction, useSamplingErrorReductionSet, useSamplingErrorReductionChange))
		return;
	
}


void Parameter::setTestRuns(int min, int max, int steps) 
{
	testRuns = min; 
	minTestRuns = min; 
	maxTestRuns = max; 
	testRunsSteps = steps;
}

void Parameter::setPopSize(int min, int max, int steps) 
{
	popSize = min;
	minPopSize = min; 
	maxPopSize = max; 
	popSizeSteps = steps;
}

void Parameter::setMaxGenerations(int min, int max, int steps) 
{
	maxGenerations = min;
	minMaxGenerations = min; 
	maxMaxGenerations = max; 
	maxGenerationsSteps = steps;
}

void Parameter::setMaxLength(int min, int max, int steps) 
{
	maxLength = min;
	minMaxLength = min; 
	maxMaxLength = max; 
	maxLengthSteps = steps;
}

void Parameter::setSelection(double min, double max, int steps) 
{
	selection = min;
	minSelection = min; 
	maxSelection = max; 
	selectionSteps = steps;
}

void Parameter::setRandomOneMax(bool set, bool change) 
{
	randomOneMax = set;
	randomOneMaxSet = set; 
	randomOneMaxChange = change;
}

void Parameter::setUseSamplingErrorReduction(bool set, bool change) 
{
	useSamplingErrorReduction = set;
	useSamplingErrorReductionSet = set; 
	useSamplingErrorReductionChange = change;
}

void Parameter::setRememberAndReuseSamplingError(bool set, bool change) 
{
	rememberAndReuseSamplingError = set;
	rememberAndReuseSamplingErrorSet = set; 
	rememberAndReuseSamplingErrorChange = change;
}

void Parameter::setUseExactRandomDistribution(bool set, bool change) 
{
	useExactRandomDistribution = set;
	useExactRandomDistributionSet = set; 
	useExactRandomDistributionChange = change;
}

void Parameter::setCorrectionType(eCorrectionType set, bool change) 
{
	correction = set;
	correctionSet = set; 
	correctionChange = change;
}

