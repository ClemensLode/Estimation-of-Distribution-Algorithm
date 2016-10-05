/*
Sampling Error and Estimation Distribution Algorithms - Studienarbeit, 08/02/06, Clemens Lode
Application: OneMax, nqueens
Version: 8

Output: Fitness values of several test-runs, Fitness is number of correct positions of the bitstring (OneMax problem)
*/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
#include <list>

enum eCorrectionType
{
	LAPLACE_CORRECTION = 0,
	NON_ZERO_CORRECTION = 1,
	NO_CORRECTION = 2
};

enum eProblemType
{
	NEEDLE_HAYSTACK_PROBLEM,

	ONEMAX_PROBLEM,
	NQUEENS_PROBLEM
};

class Individual
{
	public:
		Individual(int max_length);
		virtual ~Individual();

		virtual int calculateIndividualFitness() = 0;
		virtual void createOnEstimatedDistribution(double* p) = 0;

//	protected:			
		int fitness;
// maxLength is problem size
		int maxLength;
            
		int* bitstring;
		static int* goalString;
};

class OneMax_Individual : public Individual
{
	public:
		OneMax_Individual(int max_length);
		~OneMax_Individual();
		int calculateIndividualFitness();
		void createOnEstimatedDistribution(double* p);

};

int* Individual::goalString = NULL;

class Haystack_Individual : public Individual
{
	public:
		Haystack_Individual(int max_length);
		~Haystack_Individual();
		int calculateIndividualFitness();
		void createOnEstimatedDistribution(double* p);
};


class NQueens_Individual : public Individual
{
	public:
		NQueens_Individual(int max_length);
		~NQueens_Individual();
		int calculateIndividualFitness();
		void createOnEstimatedDistribution(double* p);
};

void Haystack_Individual::createOnEstimatedDistribution(double* p)
{
	fitness = -1;
	for(int i = 0; i < maxLength; i++)
		bitstring[i] = rand()%100 < 100.0*p[i] ? 1 : 0;
}

void OneMax_Individual::createOnEstimatedDistribution(double* p)
{
	fitness = -1;
	for(int i = 0; i < maxLength; i++)
		bitstring[i] = rand()%100 < 100.0*p[i] ? 1 : 0;
}

void NQueens_Individual::createOnEstimatedDistribution(double* p)
{
// vector p:
// row (p[x + 0 .. maxLength]): 	
	fitness = -1;
	for(int i = 0; i < maxLength; i++)
	{
		int max = 0;
		int max_value = 0;
		for(int j = 0; j < maxLength; j++)
		{
			int a = (int)((rand()%10000) * p[i*maxLength + j]);
			if(a > max_value)
			{
				max_value = a;
				max = j;
			}
		}
//=> set queen at [i | max]
		bitstring[i] = max;

		for(int j = (i+1); j < maxLength; j++)
		{
			double value = p[j*maxLength + max];
			p[j*maxLength + max] = 0.0;
			for(int k = 0; k < maxLength; k++)
				if(k!=max)
					p[j*maxLength + k] += (value / (double)maxLength);
		}
	}
}

Individual::Individual(int max_length):
	fitness(-1),
	maxLength(max_length),
	bitstring(new int[max_length])
{}

Individual::~Individual()
{
	delete bitstring;
}

OneMax_Individual::OneMax_Individual(int max_length):
	Individual(max_length)
{}

NQueens_Individual::NQueens_Individual(int max_length):
	Individual(max_length)
{}

Haystack_Individual::Haystack_Individual(int max_length):
	Individual(max_length)
{}

OneMax_Individual::~OneMax_Individual()
{}

NQueens_Individual::~NQueens_Individual()
{}

Haystack_Individual::~Haystack_Individual()
{}


int Haystack_Individual::calculateIndividualFitness()
{
	if(fitness == -1)
	{
		fitness = 1;
		for(int i = 0; i < maxLength; i++)
			if(bitstring[i] != goalString[i])
			{
				fitness = 0;
				break;
			}
	}
	return(fitness);	
}

int OneMax_Individual::calculateIndividualFitness()
{
	if(fitness == -1)
	{
		fitness = 0;
		for(int i = 0; i < maxLength; i++)
			if(bitstring[i] == goalString[i])
				fitness++;
	}
	return(fitness);	
}
/*
7 5 3 1 6 0 2 4 

- - - - - - - x
- - - - - x - -
- - - x - - - -
- x - - - - - -
- - - - - - x -
x - - - - - - - 
- - x - - - - -
- - - - x - - - 
*/

int NQueens_Individual::calculateIndividualFitness()
{
	if(fitness == -1)
	{
		fitness = maxLength;
		for(int i = 0; i < maxLength; i ++)
			for(int j = 0; j < i; j ++)
			{
				if( (bitstring[i] == bitstring[j]) || ( abs(i - j) == abs(bitstring[i] - bitstring[j])) )
				{
					fitness--;
					printf("%i, %i, (abs(%i - %i) == %i)\n", bitstring[i], bitstring[j], i, j, abs(i - j));
				}
			}
	}
	return(fitness);
}

class Parameter
{
	public:
		Parameter();
		~Parameter();
		void print() const;
		void createNextParameter();
		const bool isStartConfiguration() const;

		void initStartConfiguration();

		eProblemType problemType;
		
// number of similar test runs, 24 in order to fit on a standard windows terminal
		int testRuns;
		int minTestRuns, maxTestRuns, testRunsSteps;
		void setTestRuns(int min, int max, int steps) {minTestRuns = min; maxTestRuns = max; testRunsSteps = steps;};
		
		int popSize;
		int minPopSize, maxPopSize, popSizeSteps;
		void setPopSize(int min, int max, int steps) {minPopSize = min; maxPopSize = max; popSizeSteps = steps;};
				
		int maxGenerations;
		int minMaxGenerations, maxMaxGenerations, maxGenerationsSteps;
		void setMaxGenerations(int min, int max, int steps) {minMaxGenerations = min; maxMaxGenerations = max; maxGenerationsSteps = steps;};
				
// length of bitstring for OneMax
		int maxLength;
		int minMaxLength, maxMaxLength, maxLengthSteps;
		void setMaxLength(int min, int max, int steps) {minMaxLength = min; maxMaxLength = max; maxLengthSteps = steps;};
		
// Percentage of individuals to select for the distribution
		double selection;
		double minSelection, maxSelection;
		int selectionSteps;
		void setSelection(double min, double max, int steps) {minSelection = min; maxSelection = max; selectionSteps = steps;};
				
		bool randomOneMax;
		bool randomOneMaxSet, randomOneMaxChange;
		void setRandomOneMax(bool set, bool change) {randomOneMaxSet = set; randomOneMaxChange = change;};
		
		bool useSamplingErrorReduction;
		bool useSamplingErrorReductionSet, useSamplingErrorReductionChange;
		void setUseSamplingErrorReduction(bool set, bool change) {useSamplingErrorReductionSet = set; useSamplingErrorReductionChange = change;};

                bool rememberAndReuseSamplingError;
                bool rememberAndReuseSamplingErrorSet, rememberAndReuseSamplingErrorChange;
                void setRememberAndReuseSamplingError(bool set, bool change) {rememberAndReuseSamplingErrorSet = set; rememberAndReuseSamplingErrorChange = change;};
		
		bool useExactRandomDistribution;
		bool useExactRandomDistributionSet, useExactRandomDistributionChange;
		void setUseExactRandomDistribution(bool set, bool change) {useExactRandomDistributionSet = set; useExactRandomDistributionChange = change;};

// These options are for the cases where Sampling Error Reduction is not used, only use one at a time
// 0: Laplace, 1: No correction, 2: Non-Zero correction
// No correction: Simply divide the number of occurences of '1' by the sample size
// Non-Zero correction: Same as No Correction but if p is 0.0 or 1.0 change it to 1.0/N or 1.0 - 1.0/N
		eCorrectionType correction;
		eCorrectionType correctionSet;
		bool correctionChange;
		void setCorrectionType(eCorrectionType set, bool change) { correctionSet = set; correctionChange = change;};
};

Parameter::Parameter()
{}

Parameter::~Parameter()
{}

void Parameter::initStartConfiguration()
{
	testRuns = minTestRuns;
	popSize = minPopSize;
	maxGenerations = minMaxGenerations;
	maxLength = minMaxLength;
	selection = minSelection;
	randomOneMax = randomOneMaxSet;
	useSamplingErrorReduction = useSamplingErrorReductionSet;
	rememberAndReuseSamplingError = rememberAndReuseSamplingErrorSet;
	useExactRandomDistribution = useExactRandomDistributionSet;
	correction = correctionSet;
}


const bool Parameter::isStartConfiguration() const
{
	return( testRuns == minTestRuns && popSize == minPopSize && maxGenerations == minMaxGenerations && maxLength == minMaxLength && 
			selection == minSelection && randomOneMax == randomOneMaxSet && 
			useSamplingErrorReduction == useSamplingErrorReductionSet &&
			rememberAndReuseSamplingError == rememberAndReuseSamplingErrorSet &&
			useExactRandomDistribution == useExactRandomDistributionSet && 
			correction == correctionSet );
}


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
	if(steps)
	{
		value += (max - min) / (double)steps;
		if(value <= max)
			return true;
		else value = min;
	}
	return false;
}

bool test_int(int& value, int min, int max, int steps)
{
	if(steps)
	{
		value += (int)((max - min) / (double)steps);
		if(value <= max)
			return true;
		else value = min;
	}
	return false;
}


void Parameter::print() const
{
	printf("Runs:%i Size:%i Gens:%i Length:%i, Select:%4f, Rnd:%i ErrReduction:%i ExactR:%i RemErr:%i, Correction:%i\n", testRuns, popSize, maxGenerations, maxLength, selection, randomOneMax, useSamplingErrorReduction, useExactRandomDistribution, rememberAndReuseSamplingError, correction);
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
		
	if(test_bool(useSamplingErrorReduction, useSamplingErrorReductionSet, useSamplingErrorReductionChange))
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
}


class Test
{
	public:
		Test(const Parameter& parameter);
		~Test();
		void run();
		double* getResults() const;
	private:
		double* results;
		Parameter parameter;

// Number of best individuals to select to create the distribution
		double N;
};

Test::Test(const Parameter& parameter)
{
	this->parameter = parameter;
	results = new double[parameter.testRuns * parameter.maxGenerations];
	N = (double)parameter.popSize * parameter.selection;
}

Test::~Test()
{
}

void Test::run()
{
// The distribution vector
	double* p;
	int* rounded_number = new int[parameter.maxLength];
	double* rounding_error = new double[parameter.maxLength];
	
	for(int i = 0; i < parameter.maxLength; i++)
		rounding_error[i] = 0.0;

	switch(parameter.problemType)
	{
		case NEEDLE_HAYSTACK_PROBLEM:
		case ONEMAX_PROBLEM:
			p = new double[parameter.maxLength];
			Individual::goalString = new int[parameter.maxLength];
			if(parameter.randomOneMax)
			{
				for(int i = 0; i < parameter.maxLength; i++)
					Individual::goalString[i] = rand()%2;
			}
			else 
				for(int i = 0; i < parameter.maxLength; i++)
					Individual::goalString[i] = 1;
			break;
		case NQUEENS_PROBLEM:
			p = new double[parameter.maxLength * parameter.maxLength];
			break;
		default:break;
	}
	double n = ((double)(parameter.popSize) - 1.0)*N / ((N - 1.0)*(double)parameter.popSize);
// p1, p2 are the lower and upper border of our function
	double p1 = 0.5 - sqrt(1.0 - 1.0/n) / 2.0;
	double p2 = 0.5 + sqrt(1.0 - 1.0/n) / 2.0;
	if(p1 > p2)
	{
		double tmp = p1;
		p1 = p2;
		p2 = tmp;
	}
				
// Initialize Population
	Individual* individual[parameter.popSize];
	for(int z = 0; z < parameter.testRuns; z++)
	{
		int generation = 0;
// Reset generation, rounding error and distribution vector		
		switch(parameter.problemType)
		{
			case NEEDLE_HAYSTACK_PROBLEM:
				for(int i = 0; i < parameter.maxLength; i++)
					p[i] = 0.5;
				for(int i = 0; i < parameter.popSize; i++)
					individual[i] = new Haystack_Individual(parameter.maxLength);
				break;
			case ONEMAX_PROBLEM:
				for(int i = 0; i < parameter.maxLength; i++)
					p[i] = 0.5;
				for(int i = 0; i < parameter.popSize; i++)
					individual[i] = new OneMax_Individual(parameter.maxLength);
				break;
			case NQUEENS_PROBLEM:
				for(int i = 0; i < parameter.maxLength * parameter.maxLength; i++)
					p[i] = 1 / (double)parameter.maxLength;
				for(int i = 0; i < parameter.popSize; i++)
					individual[i] = new NQueens_Individual(parameter.maxLength);
				break;
			default:break;
		}

		for(int i = 0; i < parameter.popSize; i++)
			individual[i]->createOnEstimatedDistribution(p);
			
		while(generation < parameter.maxGenerations)
		{
// calculate fitness and sort individuals, highest fitness first
			for(int i = 0; i < parameter.popSize; i++)
				for(int j = 0; j < i; j++)
					if(individual[i]->calculateIndividualFitness() > individual[j]->calculateIndividualFitness())
					{
						Individual* t = individual[i];
						individual[i] = individual[j];
						individual[j] = t;
					}
// record best fitness
			results[z * parameter.maxGenerations + generation] = individual[0]->calculateIndividualFitness();
			generation++;

// Gather data from selected individuals
			switch(parameter.problemType)
			{
				case NEEDLE_HAYSTACK_PROBLEM:
				case ONEMAX_PROBLEM:
// Just UMDA, don't take distribution from last iteration into account
					for(int i = 0; i < parameter.maxLength; i++)
						p[i] = 0.0;		
					for(int i = (int)N; i--;)
					{
						for(int j = 0; j < parameter.maxLength; j++)
							p[j] += individual[i]->bitstring[j];
					}break;
				case NQUEENS_PROBLEM:
// Just UMDA, don't take distribution from last iteration into account
					for(int i = 0; i < parameter.maxLength * parameter.maxLength; i++)
						p[i] = 0.0;
					for(int i = (int)N; i--;)
					{
		// Die Matrix p wird so gefuellt:
		// Jede Zeile entspricht einer Dame
		// Jede Spalte entspricht der Zahl der Individuen, die die Dame in diese Spalte gesetzt haben
						for(int j = 0; j < parameter.maxLength; j++)
							p[individual[i]->bitstring[j] + j * parameter.maxLength]++;
					}break;
				default:break;
			}

			for(int i = 0; i < parameter.maxLength; i++)
			{
				if(parameter.useSamplingErrorReduction)
				{
					p[i] = p[i] / N;
					double c = sqrt(1.0 - 4.0 * p[i] * (1.0 - p[i]) * n);
					
					double q;
					if(p[i] < p1)
						q = 0.5 - c / 2.0;
					else if(p[i] > p2)
						q = 0.5 + c / 2.0;
					else 
						q = 0.5;
					p[i] = q;
				}
				else
				{
					switch(parameter.correction)
					{
						case LAPLACE_CORRECTION:p[i] = (p[i] + 1.0) / (N + 2.0);break;
						case NON_ZERO_CORRECTION:
						{
							p[i] = p[i] / N;
							double min = 1.0 / N;
							if(p[i] == 0.0)
								p[i] = min;
							else if(p[i] == 1.0)
								p[i] = 1.0 - min;
						}break;
						case NO_CORRECTION:p[i] = p[i] / N;break;
						default:break;
					}
				}
			// bei NQUEENS ergibt sich jetzt fuer p:
			// Summe einer Zeile in p muss immer 1 sein
			// Waehle eine Spalte nach dem Muster aus, dass man den hoechsten Wert uebernimmt.
			//
			
                                if(parameter.rememberAndReuseSamplingError)
                                {
// Determine number of 1s in subpopulation
                                        double number_of_1s = p[i] * parameter.popSize  + rounding_error[i];
// No whole number? Then remember the remainder
                                        rounded_number[i] = (int)round(number_of_1s);
                                        rounding_error[i] = number_of_1s - (double)rounded_number[i];
//      Create Max Length Arrays with the length N, filled with exactly 'p[i] * popSize + rounding error' 1s in a random order
                                } else
                                rounded_number[i] = (int)round(p[i] * parameter.popSize);
				
			} // end for(int i = 0; i < parameter.maxLength; i++)

		// TODO Nqueens
			if(parameter.useExactRandomDistribution)
			{
				// reset
				for(int i = 0; i < parameter.popSize; i++)
				{
					individual[i]->fitness = -1;
					for(int j = 0; j < parameter.maxLength; j++)
						individual[i]->bitstring[j] = 0;
				}
				for(int j = 0; j < parameter.maxLength; j++)
				{
					for(int i = 0; i < rounded_number[j]; i++)
					{
						int a = 0;
						do
						{
							a = rand()%parameter.popSize;
						} while(individual[a]->bitstring[j] == 1);
						individual[a]->bitstring[j] = 1;
					}
				}
			} else
			for(int i = 0; i < parameter.popSize; i++)
				individual[i]->createOnEstimatedDistribution(p);

		} // end while(generation < parameter.maxGenerations)

// get best individual and reset population	
		
		for(int i = 0; i < parameter.popSize; i++)
			delete individual[i];
	} // end for(int z = 0; z < parameter.testRuns; z++)

	switch(parameter.problemType)
	{
		case NEEDLE_HAYSTACK_PROBLEM:
		case ONEMAX_PROBLEM:delete Individual::goalString;break;
		case NQUEENS_PROBLEM:break;
		default:break;
	}
	delete p;
	delete rounding_error;
	delete rounded_number;
}

double* Test::getResults() const
{
	return results;
}

class Result
{
	public:
		Result(const Parameter& my_parameter, double* results);
		~Result();
	
		bool operator<(const Result& r);
		void copyBitstring(const int* string) const;

		Parameter parameter;

		double* fitness;
};

Result::Result(const Parameter& my_parameter, double* results):
	parameter(my_parameter),
	fitness(results)
{}

Result::~Result()
{
	delete fitness;
}

//bool Result::operator<(const Result& r)
//{
//	return(fitness > r.fitness);
//}

int main()
{
	srand(0);//time(NULL));

	std::list<Result*> result_list;

	Parameter parameter;

	parameter.problemType = NEEDLE_HAYSTACK_PROBLEM;

	parameter.setTestRuns(50, 50, 0);
	
	parameter.setPopSize(100, 100, 0);
	parameter.setMaxGenerations(500, 500, 0);
	parameter.setMaxLength(10, 10, 0);
	
// => N
	parameter.setSelection(0.5, 0.5, 0);
	parameter.setUseSamplingErrorReduction(false, true);

// important! without this 00000 will be harder to archieve than 1111 because of rounding... mmmh... (randomOneMax)
	parameter.setRandomOneMax(false, false);
	parameter.setRememberAndReuseSamplingError(false, true);

	parameter.setUseExactRandomDistribution(false, true);
	parameter.setCorrectionType(LAPLACE_CORRECTION, false);
	
	parameter.initStartConfiguration();
	do
	{
		Test test(parameter);
		test.run();
	
		Result* r = new Result(parameter, test.getResults());
		result_list.push_back(r);

		parameter.createNextParameter();
	} while(!parameter.isStartConfiguration());

//	result_list.sort();
	int j = 0;
	for(std::list<Result*>::iterator i = result_list.begin(); (i != result_list.end()) && (j < 10); i++, j++)
	{
// Die besten Fitnesswerte aller Generationen aller Durchlaeufe sichern ok
// - Fitnesswerte fuer jede einzelne Generation sortieren, nur die mittleren 50% (25%-75%) fuer Durchschnitt hernehmen
// - 1/4 und 3/4 Stichprobenquartil berechnen
		(*i)->parameter.print();

		double* q_14 = new double[(*i)->parameter.maxGenerations];
		double* q_34 = new double[(*i)->parameter.maxGenerations];
		double* average = new double[(*i)->parameter.maxGenerations];
		for(int k = 0; k < (*i)->parameter.maxGenerations; k++)
		{
			for(int l = 0; l < (*i)->parameter.testRuns; l++)
				for(int m = 0; m < l; m++)
					if((*i)->fitness[l * (*i)->parameter.maxGenerations + k] > (*i)->fitness[m * (*i)->parameter.maxGenerations + k])
					{
						double t = (*i)->fitness[l * (*i)->parameter.maxGenerations + k];
						(*i)->fitness[l * (*i)->parameter.maxGenerations + k] = (*i)->fitness[m * (*i)->parameter.maxGenerations + k];
						(*i)->fitness[m * (*i)->parameter.maxGenerations + k] = t;
					}
			average[k] = 0.0;
			int m = 0;
			for(int l = (*i)->parameter.testRuns * 0.25; l < (*i)->parameter.testRuns * 0.75 ; l++)
			{
				average[k] += (*i)->fitness[l * (*i)->parameter.maxGenerations + k];
				m++;
			}
			average[k] /= m;

			if((*i)->parameter.testRuns % 4 == 0)
			{
				q_14[k] = (*i)->fitness[(int)(0.25 * (*i)->parameter.maxGenerations) + k];
				q_34[k] = (*i)->fitness[(int)(0.75 * (*i)->parameter.maxGenerations) + k];
			}
			else
			{
				q_14[k] = 0.0;
				for(int l = (*i)->parameter.testRuns * 0.25; l <= (*i)->parameter.testRuns * 0.25 + 1; l++)
					q_14[k] += (*i)->fitness[l * (*i)->parameter.maxGenerations + k];
				q_14[k] /= 2.0;
				q_34[k] = 0.0;
				for(int l = (*i)->parameter.testRuns * 0.75; l <= (*i)->parameter.testRuns * 0.75 + 1; l++)
					q_34[k] += (*i)->fitness[l * (*i)->parameter.maxGenerations + k];
				q_34[k] /= 2.0;
			}
		}
		FILE* f;
		char* t = new char[12];
		sprintf(t, "graph%i.gnp", j);
		if ((f = fopen(t, "w")) == NULL)
			fprintf(stderr, "Cannot open %s\n", "output_file");
		delete t;
		for(int k = 0; k < (*i)->parameter.maxGenerations; k++)
			fprintf(f, "%i %f\n", k, average[k]);
	// pick up pen
		fprintf(f, "\n");
		for(int k = 0; k < (*i)->parameter.maxGenerations; k++)
			fprintf(f, "%i %f\n", k, q_14[k]);
		fprintf(f, "\n");
		for(int k = 0; k < (*i)->parameter.maxGenerations; k++)
			fprintf(f, "%i %f\n", k, q_34[k]);
		fprintf(f, "\n");
		fclose(f);	
		delete (*i);
	}

	
	char a = getchar();
	return 0;   
}
