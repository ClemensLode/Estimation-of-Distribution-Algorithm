#include "parameter.hpp"

#include <sstream>
#include <math.h>
#include <stdio.h>

std::string Parameter::correctionString[MAX_CORRECTION_TYPES] = {
	"NoC",
	"NoC+bd",
	"NoC+ERD",
	"NoC+ERD+bd",	
	"EDC",
	"EDC+bd",
	"EDC+ERD",
	"EDC+ERD+bd",
	"LC",	
	"LC+ERD",
	"LRC",
	"LRC+bd",	
	"LRC+ERD",	
	"LRC+ERD+bd",		
	"CD",
	"CD+bd",
	"CD+ERD",
	"CD+ERD+bd",
	"(1-1/N) loss"
};

bool Parameter::test_bool(bool& value, bool set, bool change)
{
	if(change)
	{
		value = !value;
		if(value != set)
			return true;
	}
	return false;
}


bool Parameter::test_double(double& value, double min, double max, int steps)
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

bool Parameter::test_int(int& value, int min, int max, int steps)
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

bool Parameter::test_log_int(int& value, int& step_nr, int min, int max, int steps)
{
	if(steps > 1)
	{
		step_nr++;		
		value = 1+(int)pow(min, (double)(1.0 + (double)step_nr * (log(max)/log(min) - 1.0) / (double)(steps-1)));
		if(value <= max)
			return true;
		else 
		{
			value = min;
			step_nr = 0;
		}
	}
	return false;
}


Parameter::Parameter()
{
	correctionCount = 0;
	currentCorrection = 0;
}

Parameter::~Parameter()
{}

const bool Parameter::isStartConfiguration() const
{
	return( testRuns == minTestRuns && popSize == minPopSize && maxGenerations == minMaxGenerations && maxLength == minMaxLength && 
			randomOneMax == randomOneMaxSet && 
			currentCorrection == 0 );
}

bool Parameter::isLaplace(eCorrectionType correction_type)
{
	return((correction_type == LAPLACE_CORRECTION) ||
		   (correction_type == LAPLACE_CORRECTION_EXACT_DISTRIBUTION) ||
		   (correction_type == LAPLACE_REMEMBER_CORRECTION) ||
		   (correction_type == LAPLACE_REMEMBER_CORRECTION_BOUNDED) ||
		   (correction_type == LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION) ||
		   (correction_type == LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION_BOUNDED));
}

bool Parameter::isBounded(eCorrectionType correction_type)
{
	return((correction_type == NO_CORRECTION_BOUNDED) ||
		(correction_type ==	NO_CORRECTION_EXACT_DISTRIBUTION_BOUNDED) ||
		(correction_type ==	EXACT_CORRECTION_BOUNDED) ||
		(correction_type ==	EXACT_CORRECTION_EXACT_DISTRIBUTION_BOUNDED) ||
		(correction_type ==	LAPLACE_REMEMBER_CORRECTION_BOUNDED) ||
		(correction_type ==	LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION_BOUNDED) ||
		(correction_type ==	DIVERSITY_CORRECTION_BOUNDED) ||
		(correction_type ==	DIVERSITY_CORRECTION_EXACT_DISTRIBUTION_BOUNDED));
}



std::string Parameter::print() const
{
	std::ostringstream os;
	os << "Runs: " << testRuns << " Size:" << popSize << " Generations:" << maxGenerations << " Length:" << maxLength << " Selection:" << selection << " Correction: " << correctionString[correction[currentCorrection]];
	if((problemType == ONEMAX_TWO_PEAKS_PROBLEM) || (problemType == NK_PROBLEM))
		os << " k:" << k;
	if(isLaplace(correction[currentCorrection]))
		os << " alpha:" << laplace_alpha;
	if(isBounded(correction[currentCorrection]))
		os << " beta:" << bounded_beta;
	return os.str();
}

void Parameter::createNextParameter()
{
	currentCorrection++;
	if(currentCorrection >= correctionCount)
		currentCorrection = 0;
	if(isLaplace(correction[currentCorrection]))
		test_double(laplace_alpha, minlaplace_alpha, maxlaplace_alpha, laplace_alphaSteps);
	if(isBounded(correction[currentCorrection]))
		test_double(bounded_beta, minbounded_beta, maxbounded_beta, bounded_betaSteps);
	test_double(selection, minselection, maxselection, selectionSteps);
	
	if(currentCorrection != 0)
		return;
	
	if(((problemType == ONEMAX_TWO_PEAKS_PROBLEM) || (problemType == NK_PROBLEM)) && (test_int(k, mink, maxk, kSteps)))
		return;
	
	if(test_bool(randomOneMax, randomOneMaxSet, randomOneMaxChange))
		return;
		
	if(test_int(maxLength, minMaxLength, maxMaxLength, maxLengthSteps))
		return;

	if(test_int(maxGenerations, minMaxGenerations, maxMaxGenerations, maxGenerationsSteps))
		return;

	if(test_log_int(popSize, popSizeStepNr, minPopSize, maxPopSize, popSizeSteps))
		return;
		
	if(test_int(testRuns, minTestRuns, maxTestRuns, testRunsSteps))
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
	popSizeStepNr = 0;
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

void Parameter::setk(int min, int max, int steps) 
{
	k = min;
	mink = min; 
	maxk = max; 
	kSteps = steps;
}

void Parameter::setLaplaceAlpha(double min, double max, int steps) 
{
	laplace_alpha = min;
	minlaplace_alpha = min; 
	maxlaplace_alpha = max; 
	laplace_alphaSteps = steps;
}

void Parameter::setBoundedBeta(double min, double max, int steps)
{
	bounded_beta = min;
	minbounded_beta = min;
	maxbounded_beta = max;
	bounded_betaSteps = steps;
}

void Parameter::setSelection(double min, double max, int steps) 
{
	selection = min;
	minselection = min; 
	maxselection = max; 
	selectionSteps = steps;
}

void Parameter::setRandomOneMax(bool set, bool change) 
{
	randomOneMax = set;
	randomOneMaxSet = set; 
	randomOneMaxChange = change;
}

void Parameter::testCorrectionType(eCorrectionType set)
{
	if(isLaplace(set))
	{
		for(int i = 0; i < laplace_alphaSteps; i++)
		{
			correction[correctionCount] = set;						
			correctionCount++;
		}
	} else if(isBounded(set))
	{
		for(int i = 0; i < bounded_betaSteps; i++)
		{
			correction[correctionCount] = set;						
			correctionCount++;
		}		
	}
	else
	{
		for(int i = 0; i < selectionSteps; i++)
		{
			correction[correctionCount] = set;	
			correctionCount++;
		}
	}
}

int Parameter::getCorrectionTypeCount() const
{
	return correctionCount;
}
