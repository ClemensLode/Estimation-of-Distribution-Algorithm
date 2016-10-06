/*
Sampling Error and Estimation Distribution Algorithms - Studienarbeit, 08/02/06, Clemens Lode
Application: OneMax, Haystack
Version: 9

Output: Fitness values of several test-runs, Fitness is number of correct positions of the bitstring (OneMax problem)
*/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <list>
#include <iostream>
#include <sstream>
#include <direct.h>

#include "test.hpp"
#include "result.hpp"
#include <math.h>

extern void initModel(int n, int k, int preload);

int main()
{
	srand(time(NULL));
	std::list<Result*> result_list;

	Parameter parameter;
// to compare BoundedBeta and LaplaceAlpha at the boundaries, use beta = alpha / (population_size * selection + 2 alpha)

// only one of these three can be set to multiple steps
	parameter.setLaplaceAlpha(0.0, 0.25, 6);
// beta = 0.1 / 25.1 (pop = 50)
// beta = 0.1 / 5.1  (pop = 10)
	parameter.setBoundedBeta(0.01, 0.01, 1);
// sets the ratio of the previous generation compared to the current generation when averaging the distribution vector
// 0.5 means that the previous generation counts 1/3, 2.0 means that the previous generation counts 2/3
	parameter.setAverageGamma(1.0, 1.0, 1);

// selection should be set to (int)(popSize*selection) > 1 and (int)(popSize*selection) < popSize in order for correction methods to work
	parameter.setSelection(0.5, 0.5, 1);
	parameter.setRandomOneMax(true, false);
	
//	parameter.testCorrectionType(NO_CORRECTION_RANDOM_DISTRIBUTION);
//	parameter.testCorrectionType(NO_CORRECTION_RANDOM_DISTRIBUTION_BOUNDARY_CORRECTION);
//	parameter.testCorrectionType(NO_CORRECTION_EXACT_DISTRIBUTION);
//	parameter.testCorrectionType(NO_CORRECTION_EXACT_DISTRIBUTION_BOUNDARY_CORRECTION);

//	parameter.testCorrectionType(LAPLACE_CORRECTION_RANDOM_DISTRIBUTION);
	parameter.testCorrectionType(LAPLACE_CORRECTION_EXACT_DISTRIBUTION);

//	parameter.testCorrectionType(LAPLACE_REMEMBER_CORRECTION_RANDOM_DISTRIBUTION);
//	parameter.testCorrectionType(LAPLACE_REMEMBER_CORRECTION_RANDOM_DISTRIBUTION_BOUNDARY_CORRECTION);
//	parameter.testCorrectionType(LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION);
//	parameter.testCorrectionType(LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION_BOUNDARY_CORRECTION);

//	parameter.testCorrectionType(RANDOM_DISTRIBUTION_CORRECTION);
//	parameter.testCorrectionType(RANDOM_DISTRIBUTION_CORRECTION_BOUNDARY_CORRECTION);
//	parameter.testCorrectionType(EXACT_DISTRIBUTION_CORRECTION);
//	parameter.testCorrectionType(EXACT_DISTRIBUTION_CORRECTION_BOUNDARY_CORRECTION);

//	parameter.testCorrectionType(EDC_LRC_BC);
//	parameter.testCorrectionType(EXACT_DISTRIBUTION_AVERAGE_BOUNDARY_CORRECTION);
//	parameter.testCorrectionType(EXACT_DISTRIBUTION_CORRECTION_AVERAGE_BOUNDARY_CORRECTION);		
	
//	parameter.testCorrectionType(TEST_CORRECTION);
//	parameter.testCorrectionType(EXACT_TEST_CORRECTION);
	

// => N

// important! without this 00000 will be harder to archieve than 1111 because of rounding... mmmh... (randomOneMax)
// Fehler im Programm: Bei Selection 1.0 und RandomOneMax = false ergibt sich trotzdem eine Tendenz zum Ergebnis!
// Wahrscheinlich wird p so veraendert, dass es langsam richtig 1 geht, unabhaengig von der tatsaechlichen Loesung.

	parameter.setTestRuns(50, 50, 0);
	parameter.setPopSize(10, 30, 2);
	parameter.setk(100, 100, 0);
	
	
//	parameter.problemType = FLAT_PROBLEM;
//	parameter.problemType = ONEMAX_PROBLEM;
//	parameter.problemType = ONEMAX_TWO_PEAKS_PROBLEM;
//	parameter.problemType = NEEDLE_HAYSTACK_PROBLEM;
//	parameter.problemType = LEADING_PROBLEM;
//	parameter.problemType = SCHAFFER_PROBLEM;	
//	parameter.problemType = PLATEAU_PROBLEM;		
//	parameter.problemType = FLAT_PROBLEM;
	parameter.problemType = NK_PROBLEM;
//	parameter.problemType = PACKING_PROBLEM;

	switch(parameter.problemType)
	{
		case FLAT_PROBLEM:
			parameter.setMaxGenerations(50, 50, 0);
			parameter.setMaxLength(100, 100, 0);
			break;
		case ONEMAX_PROBLEM:
			parameter.setMaxGenerations(100, 100, 0);
			parameter.setMaxLength(300, 300, 0);
			break;
		case ONEMAX_TWO_PEAKS_PROBLEM:
			parameter.setMaxGenerations(200, 200, 0);
			parameter.setMaxLength(500, 500, 0);
			parameter.setk(100, 100, 0);
			break;
		case NEEDLE_HAYSTACK_PROBLEM:
			parameter.setMaxGenerations(200, 200, 0);
			parameter.setMaxLength(10, 10, 0);
			break;
		case LEADING_PROBLEM:
			parameter.setMaxGenerations(200, 200, 0);
			parameter.setMaxLength(200, 200, 0);
			break;			
		case NK_PROBLEM:
			parameter.setMaxGenerations(600, 600, 0);
			parameter.setMaxLength(50, 50, 0);
			parameter.setk(10, 10, 0);
			initModel(parameter.maxLength, parameter.k, 0);			
			break;			
		case SCHAFFER_PROBLEM:
			parameter.setMaxGenerations(200, 200, 0);
			parameter.setMaxLength(40, 40, 0);
			break;
		case PLATEAU_PROBLEM:
			parameter.setMaxGenerations(200, 200, 0);
			parameter.setMaxLength(300, 300, 0);
			break;
		case PACKING_PROBLEM:
			parameter.setMaxGenerations(100, 100, 0);
		// max_length = number of availible items
			parameter.setMaxLength(10, 10, 0);
			Packing_Individual::maxPackingSize = 50;
			Packing_Individual::maxItemSize = 20;
			break;			
		default:break;
	}

	switch(parameter.problemType)
	{
		case NEEDLE_HAYSTACK_PROBLEM:
		case ONEMAX_PROBLEM:
		case LEADING_PROBLEM:
			Individual::goalString = new int[parameter.maxTestRuns * parameter.maxLength];			
			if(parameter.randomOneMax)
			{
				for(int j = 0; j < parameter.maxTestRuns; j++)
					for(int i = 0; i < parameter.maxLength; i++)
						Individual::goalString[j*parameter.maxLength + i] = rand()%2;
			}
			else 
				for(int j = 0; j < parameter.maxTestRuns; j++)
					for(int i = 0; i < parameter.maxLength; i++)
						Individual::goalString[j*parameter.maxLength + i] = 1;
			break;
// special handling 
		case FLAT_PROBLEM:
		case SCHAFFER_PROBLEM:
		case ONEMAX_TWO_PEAKS_PROBLEM:break;
		case NK_PROBLEM:
			break;
// goal string is here an array of item sizes that will or will not be put into the rucksack
		case PACKING_PROBLEM:
			{
			Individual::goalString = new int[parameter.maxTestRuns * parameter.maxLength];
			for(int j = 0; j < parameter.maxTestRuns; j++)
				for(int i = 0; i < parameter.maxLength; i++)
					Individual::goalString[j*parameter.maxLength + i] = rand()%Packing_Individual::maxItemSize;
				break;
			}
		default:break;
	}



// create fitness landscape graphs and correction graphs (only works for some problems and correction types)
/*	{
		parameter.laplace_alpha = 0.2;
		parameter.setBoundedBeta(0.04, 0.04, 1);
		parameter.setPopSize(10, 10, 0);
		Test test(parameter); eCorrectionType cor_type;
		cor_type = NO_CORRECTION_RANDOM_DISTRIBUTION; test.printDistributionCorrection(cor_type);
		cor_type = NO_CORRECTION_RANDOM_DISTRIBUTION_BOUNDARY_CORRECTION; test.printDistributionCorrection(cor_type);
		cor_type = LAPLACE_CORRECTION_RANDOM_DISTRIBUTION;	test.printDistributionCorrection(cor_type);
		cor_type = LAPLACE_REMEMBER_CORRECTION_RANDOM_DISTRIBUTION;	test.printDistributionCorrection(cor_type);
		cor_type = RANDOM_DISTRIBUTION_CORRECTION; test.printDistributionCorrection(cor_type);
		cor_type = RANDOM_DISTRIBUTION_CORRECTION_BOUNDARY_CORRECTION; test.printDistributionCorrection(cor_type);
		
		OneMax_Individual t;t.printFitnessLandscape();
		OneMax2_Individual tt; tt.printFitnessLandscape();	
	}*/

	do
	{
		printf("\n%s\n", parameter.print().c_str());
		srand(time(NULL));
		Test test(parameter);
		test.run();
		Result* r = new Result(parameter, test.getFitnessResults(), test.getDiversityResults());
		result_list.push_back(r);

		parameter.createNextParameter();
	} while(!parameter.isStartConfiguration());
	
	switch(parameter.problemType)
	{
		case PACKING_PROBLEM:
		case LEADING_PROBLEM:
		case NEEDLE_HAYSTACK_PROBLEM:
		case ONEMAX_PROBLEM:delete Individual::goalString;break;
		case SCHAFFER_PROBLEM:
		case PLATEAU_PROBLEM:
		case FLAT_PROBLEM:
		case ONEMAX_TWO_PEAKS_PROBLEM:
		case NK_PROBLEM:
			break;
		default:break;
	}
	
	printf("\n");
//	result_list.sort();
	std::string basename = Parameter::problemBaseName[parameter.problemType];
	std::string description = Parameter::problemDescription[parameter.problemType];

	long int code = time(NULL);
	std::ostringstream os;
	os << basename << code;
	std::string base_directory = os.str();
	mkdir(base_directory.c_str());

	int file_nr = 0;
	int result_nr = result_list.size();
	std::string parameter_description[result_nr/parameter.getCorrectionTypeCount()];

	for(std::list<Result*>::iterator i = result_list.begin(); (i != result_list.end()); i++, file_nr++)
	{
// Die besten Fitnesswerte aller Generationen aller Durchlaeufe sichern ok
// - Fitnesswerte fuer jede einzelne Generation sortieren, nur die mittleren 50% (25%-75%) fuer Durchschnitt hernehmen
// - 1/4 und 3/4 Stichprobenquartil berechnen
		std::cout << (*i)->parameter.print() << std::endl;
		(*i)->calculateAverage();
		FILE* f;
		std::string data_file_name;
	
		{
			std::ostringstream os; os.str("");
			os << base_directory << "/" << basename << file_nr << "_fitness.gnp";
			data_file_name = os.str();
		}
		
		if ((f = fopen(data_file_name.c_str(), "w")) == NULL)
			fprintf(stderr, "Cannot open %s\n", "output_file");
		else
		{
			std::ostringstream os; os.str("");
			os << "# " << (*i)->parameter.print() << std::endl;
			fprintf(f, os.str().c_str());
			
			double best_fitness = 0.0;
			for(int k = 0; k < (*i)->parameter.maxGenerations; k++)
			{
// Only the best average result that was found until that point is drawn, see 7.1.
//				if((*i)->fitness_average[k] > best_fitness)
					best_fitness = (*i)->fitness_average[k];
				fprintf(f, "%i %f\n", k, best_fitness);
			}
			fclose(f);
		}
	
		{
			std::ostringstream os; os.str("");
			os << base_directory << "/" << basename << file_nr << "_diversity.gnp";
			data_file_name = os.str();
		}
		
		if ((f = fopen(data_file_name.c_str(), "w")) == NULL)
			fprintf(stderr, "Cannot open %s\n", "output_file");
		else
		{
			std::ostringstream os; os.str("");
			os << "# " << (*i)->parameter.print() << std::endl;
			fprintf(f, os.str().c_str());

			for(int k = 0; k < (*i)->parameter.maxGenerations; k++)
				fprintf(f, "%i %f\n", k, (*i)->diversity_average[k]);
			fclose(f);
		}
		
		if(file_nr % parameter.getCorrectionTypeCount() == 0)
		{
			int t = file_nr / parameter.getCorrectionTypeCount();
			parameter_description[t] = "";
			std::ostringstream os;
			os << "(";
			std::cout.precision(2);
//			if((*i)->parameter.kSteps>0)
//				os << "alpha = " << (*i)->parameter.k << ", "; ?? TODO
			if((*i)->parameter.problemType == NK_PROBLEM)
				os << "n/k: " << (*i)->parameter.maxLength << "/" << (*i)->parameter.k << ", ";
			else if((*i)->parameter.problemType == PACKING_PROBLEM)
				os << "max pack/item size: " << Packing_Individual::maxPackingSize << "/" << Packing_Individual::maxItemSize << ", ";
			os << "PopSize: " << (*i)->parameter.popSize << ")";
			parameter_description[t] = os.str();
		}
		delete (*i);
	}

	std::string correction_description[parameter.getCorrectionTypeCount()];
	for(int i = 0; i < parameter.getCorrectionTypeCount(); i++)
	{
		// TODO auch beides (alpha/beta und selection) gemeinsam erlauben
		correction_description[i] = Parameter::correctionString[parameter.correction[i]];
		std::ostringstream os;		
		os << correction_description[i];
		if(Parameter::isLaplace(parameter.correction[i]))
		{
			os << ", a=" << parameter.laplace_alpha;
			Parameter::test_double(parameter.laplace_alpha, parameter.minlaplace_alpha, parameter.maxlaplace_alpha, parameter.laplace_alphaSteps);
		}
	
		if(Parameter::isBoundaryCorrection(parameter.correction[i]))
		{
			os << ", b=" << parameter.bounded_beta;
			Parameter::test_double(parameter.bounded_beta, parameter.minbounded_beta, parameter.maxbounded_beta, parameter.bounded_betaSteps);						
		}	

		if(Parameter::isAverageCorrection(parameter.correction[i]))
		{
			os << ", g=" << parameter.average_gamma;
			Parameter::test_double(parameter.average_gamma, parameter.minaverage_gamma, parameter.maxaverage_gamma, parameter.average_gammaSteps);						
		}	

		if(parameter.selectionSteps>1)
		{
			os << ", sel=" << parameter.selection * 100.0 << "%";
			Parameter::test_double(parameter.selection, parameter.minselection, parameter.maxselection, parameter.selectionSteps);			
		}
		correction_description[i] = os.str();
	}	

	std::string gnuplot_file_name;
	{
		std::ostringstream os;
		os << base_directory << ".plt";
		gnuplot_file_name = os.str();
	}


// TODO alle laplace_alphas in einen Graph!
	FILE* f;
	if ((f = fopen(gnuplot_file_name.c_str(), "w")) == NULL)
		fprintf(stderr, "Cannot open %s\n", "output_file");
	else
	{
		for(int h = 0; h < parameter.getCorrectionTypeCount(); h++)
			fprintf(f, "set style line %i lt %i lw 3\n", h+1, h+1);
//		for(int h = 0; h < parameter.getCorrectionTypeCount(); h++)
//			fprintf(f, "set style line %i lt %i lw 1\n", h + 1 + parameter.getCorrectionTypeCount(), h+1);
		fprintf(f, "\n");
		
		if(parameter.problemType != FLAT_PROBLEM)
		{
			fprintf(f, "set xlabel 'generation'\nset ylabel 'fitness'\nset terminal png size 500,350\nset key right bottom\n");

			for(int i = 0; i < result_nr / parameter.getCorrectionTypeCount(); i++)
			{
				fprintf(f, "set output \"%s/%s%03i_fitness.png\"\n",
					base_directory.c_str(), basename.c_str(), i);
//				fprintf(f, "set title '%s %s'\n", 
//					description.c_str(), parameter_description[i].c_str());
				fprintf(f, "plot ");
			
				for(int h = 0; h < parameter.getCorrectionTypeCount(); h++)
				{
					if((parameter.correction[h] != TEST_CORRECTION) && (parameter.correction[h] != EXACT_TEST_CORRECTION))
					{	
						fprintf(f, "\"%s/%s%i_fitness.gnp\" ti \"%s\" with lines ls %i", 
							base_directory.c_str(), basename.c_str(), i*parameter.getCorrectionTypeCount()+h, correction_description[h].c_str(), h+1);
						if((h != parameter.getCorrectionTypeCount() - 1) && ((parameter.correction[h+1]) != TEST_CORRECTION) && ((parameter.correction[h+1]) != EXACT_TEST_CORRECTION))							
							fprintf(f, ", ");						
					}
				}
				fprintf(f, "\n\n");
    		}
			fprintf(f, "\n\n");
		} 
		
		fprintf(f, "set xlabel 'generation'\nset ylabel 'diversity'\nset terminal png size 500,350\n\n");
		for(int i = 0; i < result_nr / parameter.getCorrectionTypeCount(); i++)
		{
			fprintf(f, "set output \"%s/%s%03i_diversity.png\"\n",
				base_directory.c_str(), basename.c_str(), i);
//			fprintf(f, "set title '%s %s'\n", 
//				description.c_str(), parameter_description[i].c_str());
			fprintf(f, "plot ");
			
			for(int h = 0; h < parameter.getCorrectionTypeCount(); h++)
			{	
				fprintf(f, "\"%s/%s%i_diversity.gnp\" ti \"%s\" with lines ls %i", 
					base_directory.c_str(), basename.c_str(), i*parameter.getCorrectionTypeCount()+h, correction_description[h].c_str(), h+1);
				if(h != parameter.getCorrectionTypeCount() - 1)
					fprintf(f, ", ");
			}
			fprintf(f, "\n\n");
    	}
		fprintf(f, "\n\n");
		
		fclose(f);
	}
	printf("done.\n");
	char a = getchar();
	return 0;   
}
