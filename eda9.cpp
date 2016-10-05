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

	parameter.setLaplaceAlpha(0.001, 0.009, 5);
// beta = 0.1 / 25.2 (pop = 50)
// beta = 0.1 / 5.2  (pop = 10)
	parameter.setBoundedBeta(0.01, 0.01, 1);
	parameter.setSelection(0.5, 0.5, 1);
		
//	parameter.testCorrectionType(NO_CORRECTION);
//	parameter.testCorrectionType(NO_CORRECTION_BOUNDED);
//	parameter.testCorrectionType(NO_CORRECTION_EXACT_DISTRIBUTION);
//	parameter.testCorrectionType(NO_CORRECTION_EXACT_DISTRIBUTION_BOUNDED);

//	parameter.testCorrectionType(EXACT_CORRECTION);
//	parameter.testCorrectionType(EXACT_CORRECTION_BOUNDED);
//	parameter.testCorrectionType(EXACT_CORRECTION_EXACT_DISTRIBUTION);
//	parameter.testCorrectionType(EXACT_CORRECTION_EXACT_DISTRIBUTION_BOUNDED);

	parameter.testCorrectionType(LAPLACE_CORRECTION);
//	parameter.testCorrectionType(LAPLACE_CORRECTION_EXACT_DISTRIBUTION);

//	parameter.testCorrectionType(LAPLACE_REMEMBER_CORRECTION);
//	parameter.testCorrectionType(LAPLACE_REMEMBER_CORRECTION_BOUNDED);

//	parameter.testCorrectionType(LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION);
//	parameter.testCorrectionType(LAPLACE_REMEMBER_CORRECTION_EXACT_DISTRIBUTION_BOUNDED);

//	parameter.testCorrectionType(DIVERSITY_CORRECTION);
//	parameter.testCorrectionType(DIVERSITY_CORRECTION_BOUNDED);

//	parameter.testCorrectionType(DIVERSITY_CORRECTION_EXACT_DISTRIBUTION);
//	parameter.testCorrectionType(DIVERSITY_CORRECTION_EXACT_DISTRIBUTION_BOUNDED);

//	parameter.testCorrectionType(TEST_CORRECTION);

	parameter.setRandomOneMax(true, false);
// => N

// important! without this 00000 will be harder to archieve than 1111 because of rounding... mmmh... (randomOneMax)
// Fehler im Programm: Bei Selection 1.0 und RandomOneMax = false ergibt sich trotzdem eine Tendenz zum Ergebnis!
// Wahrscheinlich wird p so veraendert, dass es langsam richtig 1 geht, unabhaengig von der tatsaechlichen Loesung.

	parameter.setTestRuns(50, 50, 0);
	parameter.setPopSize(10, 10, 0);
	parameter.setk(100, 100, 0);
	
//	parameter.problemType = FLAT_PROBLEM;
	parameter.problemType = ONEMAX_PROBLEM;
//	parameter.problemType = ONEMAX_TWO_PEAKS_PROBLEM;
//	parameter.problemType = NEEDLE_HAYSTACK_PROBLEM;
//	parameter.problemType = LEADING_PROBLEM;
//	parameter.problemType = SCHAFFER_PROBLEM;	
//	parameter.problemType = PLATEAU_PROBLEM;		
//	parameter.problemType = NK_PROBLEM;

	switch(parameter.problemType)
	{
		case FLAT_PROBLEM:
			parameter.setMaxGenerations(200, 200, 0);
			parameter.setMaxLength(100, 100, 0);
			break;
		case ONEMAX_PROBLEM:
			parameter.setMaxGenerations(2000, 2000, 0);
			parameter.setMaxLength(300, 300, 0);
			break;
		case ONEMAX_TWO_PEAKS_PROBLEM:
			parameter.setMaxGenerations(100, 100, 0);
			parameter.setMaxLength(500, 500, 0);
			parameter.setk(100, 100, 0);
			break;
		case NEEDLE_HAYSTACK_PROBLEM:
			parameter.setMaxGenerations(200, 200, 0);
			parameter.setMaxLength(10, 10, 0);
			break;
		case LEADING_PROBLEM:
			parameter.setMaxGenerations(2000, 2000, 0);
			parameter.setMaxLength(100, 100, 0);
			break;			
		case NK_PROBLEM:
			parameter.setMaxGenerations(300, 300, 0);
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
		default:break;
	}
	{
//		Test test(parameter);
//		test.printDistributionCorrection("NC_BD", "No correction + bounded", NO_CORRECTION_BOUNDED, 0.001);
//		test.printDistributionCorrection("EC", "Exact correction", EXACT_CORRECTION, 1.0);
//		test.printDistributionCorrection("LC05", "Laplace correction for a=0.5", LAPLACE_CORRECTION, 0.5);
//		test.printDistributionCorrection("LC1", "Laplace correction for a=1.0", LAPLACE_CORRECTION, 1.0);
//		test.printDistributionCorrection("LC15", "Laplace correction for a=1.5", LAPLACE_CORRECTION, 1.5);		
//		test.printDistributionCorrection("DC", "Diversity correction", DIVERSITY_CORRECTION, 1.0);
//	OneMax_Individual t;t.printFitnessLandscape();
//	OneMax2_Individual tt; tt.printFitnessLandscape();	
	}

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
	printf("\n");
//	result_list.sort();
	std::string basename;
	std::string description;
	switch(parameter.problemType)
	{
		case FLAT_PROBLEM:
			basename = "graph_flat";
			description = "Flat fitness landscape";
			break;			
		case ONEMAX_PROBLEM:
			basename = "graph_onemax";
			description = "OneMax";
			break;
		case ONEMAX_TWO_PEAKS_PROBLEM:
			basename = "graph_onemax_two";
			description = "OneMax Two Peaks";
			break;
		case NEEDLE_HAYSTACK_PROBLEM:
			basename = "graph_haystack";
			description = "Needle in a Haystack";
			break;
		case LEADING_PROBLEM:
			basename = "graph_leading";
			description = "Leading 1s";
			break;
		case SCHAFFER_PROBLEM:
			basename = "graph_schaffer";
			description = "Schaffer F6 function";
			break;
		case PLATEAU_PROBLEM:
			basename = "graph_plateau";
			description = "Plateau function";
			break;
		case NK_PROBLEM:
			basename = "graph_nk";
			description = "NK problem";
			break;
		default:break;
	}
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
				if((*i)->fitness_average[k] > best_fitness)
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
			if((*i)->parameter.kSteps>0)
				os << "alpha = " << (*i)->parameter.k << ", ";
//			if((*i)->parameter.selectionSteps>0)
//				os << "Selection: " << (*i)->parameter.selection * 100.0 << "%, ";
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
		if(Parameter::isLaplace(parameter.correction[i]))
		{
			std::ostringstream os;
			os << correction_description[i] << ", a=" << parameter.laplace_alpha;
			correction_description[i] = os.str();
			Parameter::test_double(parameter.laplace_alpha, parameter.minlaplace_alpha, parameter.maxlaplace_alpha, parameter.laplace_alphaSteps);			
		} else
		// TODO: Was wenn man Laplace + verschiedene Werte von bounded testen will?
		if(Parameter::isBounded(parameter.correction[i]))
		{
			std::ostringstream os;
			os << correction_description[i] << ", b=" << parameter.bounded_beta;
			correction_description[i] = os.str();
			Parameter::test_double(parameter.bounded_beta, parameter.minbounded_beta, parameter.maxbounded_beta, parameter.bounded_betaSteps);			
		} else
		if(parameter.selectionSteps>1)
		{
			std::ostringstream os;
			os << correction_description[i] << ", sel=" << parameter.selection * 100.0 << "%";
			correction_description[i] = os.str();
			Parameter::test_double(parameter.selection, parameter.minselection, parameter.maxselection, parameter.selectionSteps);
//schleife ganz aussen rum :o		
		}
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
				fprintf(f, "set title '%s %s'\n", 
					description.c_str(), parameter_description[i].c_str());
				fprintf(f, "plot ");
			
				for(int h = 0; h < parameter.getCorrectionTypeCount(); h++)
					if(parameter.correction[h] != TEST_CORRECTION)
					{	
						fprintf(f, "\"%s/%s%i_fitness.gnp\" ti \"%s\" with lines ls %i", 
							base_directory.c_str(), basename.c_str(), i*parameter.getCorrectionTypeCount()+h, correction_description[h].c_str(), h+1);
						if((h != parameter.getCorrectionTypeCount() - 1) && (parameter.correction[h+1] != TEST_CORRECTION))
							fprintf(f, ", ");
					} else if(h != parameter.getCorrectionTypeCount() - 1)
						fprintf(f, ", ");
					fprintf(f, "\n\n");
    		}
			fprintf(f, "\n\n");
		} 
		
		fprintf(f, "set xlabel 'generation'\nset ylabel 'diversity p(1-p)'\nset terminal png size 500,350\n\n");
		for(int i = 0; i < result_nr / parameter.getCorrectionTypeCount(); i++)
		{
			fprintf(f, "set output \"%s/%s%03i_diversity.png\"\n",
				base_directory.c_str(), basename.c_str(), i);
			fprintf(f, "set title '%s %s'\n", 
				description.c_str(), parameter_description[i].c_str());
			fprintf(f, "plot ");
			
			for(int h = 0; h < parameter.getCorrectionTypeCount(); h++)
			{	
				fprintf(f, "\"%s/%s%i_diversity.gnp\" ti \"%s\" with lines ls %i", 
					base_directory.c_str(), basename.c_str(), i*parameter.getCorrectionTypeCount()+h, correction_description[h].c_str(), h+1);
				if(parameter.correction[h] != TEST_CORRECTION)
				{
					if(h != parameter.getCorrectionTypeCount() - 1)
						fprintf(f, ", ");
				}
			}
			fprintf(f, "\n\n");
    		}
		fprintf(f, "\n\n");
		
		fclose(f);
	}
	char a = getchar();
	return 0;   
}
