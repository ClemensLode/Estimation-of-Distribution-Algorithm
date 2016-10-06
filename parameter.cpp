#include "parameter.hpp"

#include <sstream>
#include <math.h>
#include <stdio.h>

std::string Parameter::problemBaseName[MAX_PROBLEM_TYPES] = {
	"graph_flat",
	"graph_haystack",
	"graph_onemax",
	"graph_onemax_two",
	"graph_leading",
	"graph_schaffer",
	"graph_plateau",
	"graph_nk",
	"graph_packing"
};

std::string Parameter::problemDescription[MAX_PROBLEM_TYPES] = {
	"Flat fitness landscape",
	"Needle in a Haystack",
	"OneMax",
	"OneMax Two Peaks",
	"Leading 1s",
	"Schaffer F6 function",
	"Plateau function",
	"NK problem",
	"Packing problem"
};

std::string Parameter::correctionString[MAX_CORRECTION_TYPES] = {
	"RD+NoC",
	"RD+BC",
	"ED+NoC",
	"ED+BC",
	
	"RD+LC",
	"ED+LC",
	
	"RD+LRC",
	"RD+LRC+BC",
	"ED+LRC",	
	"ED+LRC+BC",
	
	"RDC",
	"RDC+BC",
	"EDC",
	"EDC+BC",
	
	"EDC+LRC+BC",
	"ED+AV+BC",
	"EDC+AV+BC",
	
	"(1-1/N) loss",
	"(M*(N-1)/(N*(M-1)) loss"
};

std::string Parameter::correctionBaseName[MAX_CORRECTION_TYPES] = {
	"no",
	"boundary",
	"exact_no",
	"exact_boundary",
	
	"laplace",
	"exact_laplace",
	
	"laplace_remember",
	"laplace_remember_boundary",
	"exact_laplace_remember",
	"exact_laplace_remember_boundary",
	
	"random_distribution",
	"random_distribution_boundary",
	"exact_distribution",
	"exact_distribution_boundary",
	
	"edc_lrc_boundary",
	"ed_av_boundary",
	"edc_av_boundary",
	
	"standard_loss_no"
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
		if((int)(value * 10000) > (int)(max * 10000))
		{
			value = min;
		}
		else 
			return true;
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

bool Parameter::isAverageCorrection(eCorrectionType correction_type)
{
	return((correction_type == EXACT_DISTRIBUTION_AVERAGE_BOUNDARY_CORRECTION) ||
		   (correction_type == EXACT_DISTRIBUTION_CORRECTION_AVERAGE_BOUNDARY_CORRECTION));
}

bool Parameter::isNoCorrection(eCorrectionType correction_type)
{
	return((correction_type == NO_CORRECTION_RANDOM_DISTRIBUTION) ||
		   (correction_type == NO_CORRECTION_EXACT_DISTRIBUTION) ||
		   (correction_type == NO_CORRECTION_RANDOM_DISTRIBUTION_BOUNDARY_CORRECTION) ||
		   (correction_type == NO_CORRECTION_EXACT_DISTRIBUTION_BOUNDARY_CORRECTION));
}

bool Parameter::isLaplace(eCorrectionType correction_type)
{
	return((correction_type == LAPLACE_CORRECTION_RANDOM_DISTRIBUTION) ||
		   (correction_type == LAPLACE_CORRECTION_EXACT_DISTRIBUTION) ||
		   (correction_type == LAPLACE_REMEMBER_CORRECTION_RANDOM_DISTRIBUTION) ||
		   (correction_type == LAPLACE_REMEMBER_CORRECTION_RANDOM_DISTRIBUTION_BOUNDARY_CORRECTION) ||
		   (correction_type == LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION) ||
		   (correction_type == LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION_BOUNDARY_CORRECTION) ||
		   (correction_type == EDC_LRC_BC));
}

bool Parameter::isLaplaceRemember(eCorrectionType correction_type)
{
	return((correction_type == LAPLACE_REMEMBER_CORRECTION_RANDOM_DISTRIBUTION) ||
		   (correction_type == LAPLACE_REMEMBER_CORRECTION_RANDOM_DISTRIBUTION_BOUNDARY_CORRECTION) ||
		   (correction_type == LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION) ||
		   (correction_type == LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION_BOUNDARY_CORRECTION) ||
		   (correction_type == EDC_LRC_BC) ||
		   (correction_type == EXACT_DISTRIBUTION_AVERAGE_BOUNDARY_CORRECTION) ||
		   (correction_type == EXACT_DISTRIBUTION_CORRECTION_AVERAGE_BOUNDARY_CORRECTION));
}

bool Parameter::isExactDistribution(eCorrectionType correction_type)
{
	return((correction_type == NO_CORRECTION_EXACT_DISTRIBUTION) ||
		   (correction_type == NO_CORRECTION_EXACT_DISTRIBUTION_BOUNDARY_CORRECTION) ||
		   (correction_type == LAPLACE_CORRECTION_EXACT_DISTRIBUTION) ||
		   (correction_type == LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION) ||
		   (correction_type == LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION_BOUNDARY_CORRECTION) ||
		   (correction_type == EXACT_DISTRIBUTION_CORRECTION) ||
		   (correction_type == EXACT_DISTRIBUTION_CORRECTION_BOUNDARY_CORRECTION) ||
		   (correction_type == EDC_LRC_BC) ||
		   (correction_type == EXACT_DISTRIBUTION_AVERAGE_BOUNDARY_CORRECTION) ||
		   (correction_type == EXACT_DISTRIBUTION_CORRECTION_AVERAGE_BOUNDARY_CORRECTION));
}

bool Parameter::isBoundaryCorrection(eCorrectionType correction_type)
{
	return((correction_type == NO_CORRECTION_RANDOM_DISTRIBUTION_BOUNDARY_CORRECTION) ||
		   (correction_type == NO_CORRECTION_EXACT_DISTRIBUTION_BOUNDARY_CORRECTION) ||
		
		   (correction_type == LAPLACE_REMEMBER_CORRECTION_RANDOM_DISTRIBUTION_BOUNDARY_CORRECTION) ||
		   (correction_type == LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION_BOUNDARY_CORRECTION) ||
		
		   (correction_type == RANDOM_DISTRIBUTION_CORRECTION_BOUNDARY_CORRECTION) ||
		   (correction_type == EXACT_DISTRIBUTION_CORRECTION_BOUNDARY_CORRECTION) ||
		   
		   (correction_type == EDC_LRC_BC) ||
		   (correction_type == EXACT_DISTRIBUTION_AVERAGE_BOUNDARY_CORRECTION) ||
		   (correction_type == EXACT_DISTRIBUTION_CORRECTION_AVERAGE_BOUNDARY_CORRECTION));
}

bool Parameter::isDistributionCorrection(eCorrectionType correction_type)
{
	return((correction_type == RANDOM_DISTRIBUTION_CORRECTION) ||
		   (correction_type == RANDOM_DISTRIBUTION_CORRECTION_BOUNDARY_CORRECTION) ||	
		   (correction_type == EXACT_DISTRIBUTION_CORRECTION) ||
		   (correction_type == EXACT_DISTRIBUTION_CORRECTION_BOUNDARY_CORRECTION) ||
		   (correction_type == EDC_LRC_BC) ||
		   (correction_type == EXACT_DISTRIBUTION_AVERAGE_BOUNDARY_CORRECTION) ||
		   (correction_type == EXACT_DISTRIBUTION_CORRECTION_AVERAGE_BOUNDARY_CORRECTION));		   
}


std::string Parameter::print() const
{
	std::ostringstream os;
	os << "Runs: " << testRuns << " Size:" << popSize << " Generations:" << maxGenerations << " Length:" << maxLength << " Selection:" << (int)((double)popSize * selection) << " Correction: " << correctionString[correction[currentCorrection]];
	if((problemType == ONEMAX_TWO_PEAKS_PROBLEM) || (problemType == NK_PROBLEM))
		os << " k:" << k;
//	if(problemType == PACKING_PROBLEM)
//		os << " max_size:" << Packing_Individual::maxPackingSize;
	if(isLaplace(correction[currentCorrection]))
		os << " alpha:" << laplace_alpha;
	if(isBoundaryCorrection(correction[currentCorrection]))
		os << " beta:" << bounded_beta;
	if(isAverageCorrection(correction[currentCorrection]))
		os << " gamma:" << average_gamma;
	return os.str();
}

void Parameter::createNextParameter()
{
	currentCorrection++;
	if(currentCorrection >= correctionCount)
		currentCorrection = 0;

	if(isLaplace(correction[currentCorrection]))
		test_double(laplace_alpha, minlaplace_alpha, maxlaplace_alpha, laplace_alphaSteps);
	if(isBoundaryCorrection(correction[currentCorrection]))
		test_double(bounded_beta, minbounded_beta, maxbounded_beta, bounded_betaSteps);
	if(isAverageCorrection(correction[currentCorrection]))
		test_double(average_gamma, minaverage_gamma, maxaverage_gamma, average_gammaSteps);
		
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
void Parameter::setAverageGamma(double min, double max, int steps)
{
	average_gamma = min;
	minaverage_gamma = min;
	maxaverage_gamma = max;
	average_gammaSteps = steps;
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
	for(int i = 0; i < selectionSteps; i++)
	if(isAverageCorrection(set))
	{
		for(int i = 0; i < average_gammaSteps; i++)
		{
			correction[correctionCount] = set;						
			correctionCount++;
		}
	} else
	if(isLaplace(set))
	{
		for(int i = 0; i < laplace_alphaSteps; i++)
		{
			correction[correctionCount] = set;						
			correctionCount++;
		}
	} else if(isBoundaryCorrection(set))
	{
		for(int i = 0; i < bounded_betaSteps; i++)
		{
			correction[correctionCount] = set;						
			correctionCount++;
		}		
	} else
		{
			correction[correctionCount] = set;	
			correctionCount++;
		}
}

int Parameter::getCorrectionTypeCount() const
{
	return correctionCount;
}
