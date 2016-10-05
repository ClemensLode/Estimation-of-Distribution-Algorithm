/*
Sampling Error and Estimation Distribution Algorithms - Studienarbeit, 08/02/06, Clemens Lode
Application: OneMax, nqueens, Haystack
Version: 8

Output: Fitness values of several test-runs, Fitness is number of correct positions of the bitstring (OneMax problem)
*/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <list>
#include <iostream>
#include <sstream>

#include "test.hpp"
#include "result.hpp"
#include <math.h>

int main()
{

	srand(0);//time(NULL));
	std::list<Result*> result_list;

	Parameter parameter;

	parameter.testCorrectionType(NO_CORRECTION);
	parameter.testCorrectionType(NO_CORRECTION_BOUNDED);
	parameter.testCorrectionType(LAPLACE_CORRECTION);
	parameter.testCorrectionType(LAPLACE_REMEMBER_CORRECTION);
	parameter.testCorrectionType(DIVERSITY_CORRECTION);
	parameter.testCorrectionType(DIVERSITY_CORRECTION_BOUNDED);
	parameter.testCorrectionType(DIVERSITY_CORRECTION_LAPLACE);
	parameter.testCorrectionType(TEST_CORRECTION);

	parameter.setUseExactRandomDistribution(false, true);
	parameter.setRememberAndReuseSamplingError(false, false);
// => N
	parameter.setSelection(0.5, 0.5, 0);
// important! without this 00000 will be harder to archieve than 1111 because of rounding... mmmh... (randomOneMax)
// Fehler im Programm: Bei Selection 1.0 und RandomOneMax = false ergibt sich trotzdem eine Tendenz zum Ergebnis!
// Wahrscheinlich wird p so veraendert, dass es langsam richtig 1 geht, unabhaengig von der tatsaechlichen Loesung.
	parameter.setRandomOneMax(true, false);

	
	parameter.problemType = ONEMAX_PROBLEM;
	parameter.setTestRuns(50, 50, 0);
	parameter.setMaxGenerations(200, 200, 0);
	parameter.setMaxLength(500, 500, 0);
//	double n = sqrt( pow(2.0, (double)parameter.maxLength) / (double)parameter.maxLength);
	parameter.setPopSize(10, 100, 4);

	parameter.problemType = ONEMAX_TWO_PEAKS_PROBLEM;
	parameter.setTestRuns(50, 50, 0);
	parameter.setMaxGenerations(200, 200, 0);
	parameter.setMaxLength(500, 500, 0);
//	double n = sqrt( pow(2.0, (double)parameter.maxLength) / (double)parameter.maxLength);
	parameter.setPopSize(10, 100, 4);



//	parameter.problemType = NEEDLE_HAYSTACK_PROBLEM;
//	parameter.setTestRuns(50, 50, 0);
//	parameter.setMaxGenerations(200, 200, 0);
//	parameter.setMaxLength(10, 10, 0);
//	parameter.setPopSize(10, 100, 4);

	
	do
	{
		srand(0);//time(NULL));
		Test test(parameter);
		test.run();
	
		Result* r = new Result(parameter, test.getFitnessResults(), test.getDiversityResults());
		result_list.push_back(r);

		parameter.createNextParameter();
	} while(!parameter.isStartConfiguration());

//	result_list.sort();
	int j = 0;
	int result_nr = result_list.size();

	std::string basename;
	std::string description;
	std::string parameter_description[result_nr/parameter.getCorrectionTypeCount()];
	std::string correction_description[parameter.getCorrectionTypeCount()];
	
	switch(parameter.problemType)
	{
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
			description = "Flat fitness landscape";
			break;
		case NQUEENS_PROBLEM:
			basename = "graph_nqueens";
			description = "NQueens problem";			
			break;
		default:break;
	}

	for(std::list<Result*>::iterator i = result_list.begin(); (i != result_list.end()); i++, j++)
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
			os << basename << "/" << basename << j << "_fitness.gnp";
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
				fprintf(f, "%i %f\n", k, (*i)->fitness_average[k]);
			fclose(f);
		}

/*		{
			std::ostringstream os; os.str("");
			os << basename << "/" << basename << j << "_fitness_quartil.gnp";
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
				fprintf(f, "%i %f\n", k, (*i)->fitness_q_14[k]);
			fprintf(f, "\n");
			for(int k = 0; k < (*i)->parameter.maxGenerations; k++)
				fprintf(f, "%i %f\n", k, (*i)->fitness_q_34[k]);

			fclose(f);
		}*/
	
		{
			std::ostringstream os; os.str("");
			os << basename << "/" << basename << j << "_diversity.gnp";
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

/*		{
			std::ostringstream os; os.str("");
			os << basename << "/" << basename << j << "_diversity_quartil.gnp";
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
				fprintf(f, "%i %f\n", k, (*i)->diversity_q_14[k]);
			fprintf(f, "\n");
			for(int k = 0; k < (*i)->parameter.maxGenerations; k++)
				fprintf(f, "%i %f\n", k, (*i)->diversity_q_34[k]);

			fclose(f);
		}*/
		if(j % parameter.getCorrectionTypeCount() == 0)
		{
			int t = j / parameter.getCorrectionTypeCount();
			parameter_description[t] = "";
			std::ostringstream os;
			os << "(";
			if((*i)->parameter.rememberAndReuseSamplingError)
				os << "Remember Sampling Error, ";
			if((*i)->parameter.useExactRandomDistribution)
				os << "Exact Random Distribution, ";
			os << "PopSize: " << (*i)->parameter.popSize << ")";
			parameter_description[t] = os.str();
		}
			
		
		delete (*i);
	}

	for(int i = 0; i < parameter.getCorrectionTypeCount(); i++)
	{
		correction_description[i] = "";
		switch(parameter.correction[i])
		{
			case NO_CORRECTION:correction_description[i] = "No correction";break;
			case NO_CORRECTION_BOUNDED:correction_description[i] = "No correction + bounded";break;
			case LAPLACE_CORRECTION:correction_description[i] = "Laplace correction";break;
			case LAPLACE_REMEMBER_CORRECTION:correction_description[i] = "Laplace remember correction";break;
			case DIVERSITY_CORRECTION:correction_description[i] = "Corrected distribution";break;
			case DIVERSITY_CORRECTION_BOUNDED:correction_description[i] = "Corrected distribution + bounded";break;
			case DIVERSITY_CORRECTION_LAPLACE:correction_description[i] = "Corrected distribution + Laplace";break;
			case TEST_CORRECTION:correction_description[i] = "(1 - 1/N) loss / generation";break;
			default:break;
		}
	}

	
	

	std::string gnuplot_file_name;
	{
		std::ostringstream os;
		os << basename << result_nr << ".plt";
		gnuplot_file_name = os.str();
	}

	
	FILE* f;
	if ((f = fopen(gnuplot_file_name.c_str(), "w")) == NULL)
		fprintf(stderr, "Cannot open %s\n", "output_file");
	else
	{
		fprintf(f, "set xlabel 'generation'\nset ylabel 'fitness'\nset terminal png large size 750,500\n");
		for(int h = 0; h < parameter.getCorrectionTypeCount(); h++)
			fprintf(f, "set style line %i lt %i lw 3\n", h+1, h+1);
		for(int h = 0; h < parameter.getCorrectionTypeCount(); h++)
			fprintf(f, "set style line %i lt %i lw 1\n", h + 1 + parameter.getCorrectionTypeCount(), h+1);
		fprintf(f, "\n");

		if(parameter.problemType != NEEDLE_HAYSTACK_PROBLEM)
		{
		for(int i = 0; i < result_nr / parameter.getCorrectionTypeCount(); i++)
		{
			fprintf(f, "set output \"%s/%s%03i_fitness.png\"\n",
				basename.c_str(), basename.c_str(), i);
			fprintf(f, "set title '%s %s'\n", 
				description.c_str(), parameter_description[i].c_str());
			fprintf(f, "plot ");
			
			for(int h = 0; h < parameter.getCorrectionTypeCount(); h++)
			if(parameter.correction[h] != TEST_CORRECTION)
			{	
				fprintf(f, "\"%s/%s%i_fitness.gnp\" ti \"%s\" with lines ls %i", 
					basename.c_str(), basename.c_str(), i*parameter.getCorrectionTypeCount()+h, correction_description[h].c_str(), h+1);
//				fprintf(f, ", \"%s/%s%i_fitness_quartil.gnp\" ti \"%s 1/4 and 3/4 quartil\" with lines ls %i", 
//					basename.c_str(), basename.c_str(), i*parameter.getCorrectionTypeCount()+h, correction_description[h].c_str(), h+1+parameter.getCorrectionTypeCount());
				if((h != parameter.getCorrectionTypeCount() - 1) && (parameter.correction[h+1] != TEST_CORRECTION))
					fprintf(f, ", ");
			} else if(h != parameter.getCorrectionTypeCount() - 1)
				fprintf(f, ", ");
			fprintf(f, "\n\n");
    		}
		fprintf(f, "\n\n");
		}
		fprintf(f, "set xlabel 'generation'\nset ylabel 'diversity p*(1-p)'\nset terminal png large size 750,500\n\n");

		for(int i = 0; i < result_nr / parameter.getCorrectionTypeCount(); i++)
		{
			fprintf(f, "set output \"%s/%s%03i_diversity.png\"\n",
				basename.c_str(), basename.c_str(), i);
			fprintf(f, "set title '%s %s'\n", 
				description.c_str(), parameter_description[i].c_str());
			fprintf(f, "plot ");
			
			for(int h = 0; h < parameter.getCorrectionTypeCount(); h++)
			{	
				fprintf(f, "\"%s/%s%i_diversity.gnp\" ti \"%s\" with lines ls %i", 
					basename.c_str(), basename.c_str(), i*parameter.getCorrectionTypeCount()+h, correction_description[h].c_str(), h+1);
				if(parameter.correction[h] != TEST_CORRECTION)
				{
//					fprintf(f, ", \"%s/%s%i_diversity_quartil.gnp\" ti \"%s 1/4 and 3/4 quartil\" with lines ls %i", 
//						basename.c_str(), basename.c_str(), i*parameter.getCorrectionTypeCount()+h, correction_description[h].c_str(), h+1+parameter.getCorrectionTypeCount());
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
