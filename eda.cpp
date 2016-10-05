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
/*
	parameter.problemType = ONEMAX_PROBLEM;
	parameter.setTestRuns(100, 100, 0);
	parameter.setMaxGenerations(100, 100, 0);
	parameter.setMaxLength(250, 250, 0);
//	double n = sqrt( pow(2.0, (double)parameter.maxLength) / (double)parameter.maxLength);
	parameter.setPopSize(50, 250, 3);
	parameter.setRememberAndReuseSamplingError(false, false);
	parameter.setUseExactRandomDistribution(false, false);*/


	parameter.problemType = NEEDLE_HAYSTACK_PROBLEM;
	parameter.setTestRuns(50, 50, 0);
	parameter.setMaxGenerations(100, 100, 0);
	parameter.setMaxLength(15, 15, 0);
//	double n = sqrt( pow(2.0, (double)parameter.maxLength) / (double)parameter.maxLength);
//	parameter.setPopSize((int)n, (int)n*50, 3);
	parameter.setPopSize(200, 1000, 5);
	parameter.setRememberAndReuseSamplingError(false, false);
	parameter.setUseExactRandomDistribution(false, false);

	
// => N
	parameter.setSelection(0.5, 0.5, 0);
	parameter.setUseSamplingErrorReduction(false, true);

// important! without this 00000 will be harder to archieve than 1111 because of rounding... mmmh... (randomOneMax)
// Fehler im Programm: Bei Selection 1.0 und RandomOneMax = false ergibt sich trotzdem eine Tendenz zum Ergebnis!
// Wahrscheinlich wird p so veraendert, dass es langsam richtig 1 geht, unabhaengig von der tatsaechlichen Loesung.
	parameter.setRandomOneMax(true, false);
	parameter.setCorrectionType(LAPLACE_CORRECTION, false);
	
	do
	{
		srand(0);//time(NULL));
		Test test(parameter);
		test.run();
	
		Result* r = new Result(parameter, test.getResults());
		result_list.push_back(r);

		parameter.createNextParameter();
	} while(!parameter.isStartConfiguration());

//	result_list.sort();
	int j = 0;
	int result_nr = result_list.size();

	std::string basename;
	std::string description;
	std::string parameter_description[result_nr/2];
	
	switch(parameter.problemType)
	{
		case ONEMAX_PROBLEM:
			basename = "graph_onemax";
			description = "OneMax";
			break;
		case NEEDLE_HAYSTACK_PROBLEM:
			basename = "graph_haystack";
			description = "Needle in a haystack";
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
			std::ostringstream os;
			os.str("");
			os << basename << "/" << basename << j << ".gnp";
			data_file_name = os.str();
		}
		
		if ((f = fopen(data_file_name.c_str(), "w")) == NULL)
			fprintf(stderr, "Cannot open %s\n", "output_file");
		else
		{
			std::ostringstream os;
			os << "# " << (*i)->parameter.print() << std::endl;
			fprintf(f, os.str().c_str());

			for(int k = 0; k < (*i)->parameter.maxGenerations; k++)
				fprintf(f, "%i %f\n", k, (*i)->average[k]);
			fclose(f);
		}

		{
			std::ostringstream os;
			os.str("");
			os << basename << "/" << basename << j << "_quartil.gnp";
			data_file_name = os.str();
		}
		
		if ((f = fopen(data_file_name.c_str(), "w")) == NULL)
			fprintf(stderr, "Cannot open %s\n", "output_file");
		else
		{
			std::ostringstream os;
			os << "# " << (*i)->parameter.print() << std::endl;
			fprintf(f, os.str().c_str());
			for(int k = 0; k < (*i)->parameter.maxGenerations; k++)
				fprintf(f, "%i %f\n", k, (*i)->q_14[k]);
			fprintf(f, "\n");
			for(int k = 0; k < (*i)->parameter.maxGenerations; k++)
				fprintf(f, "%i %f\n", k, (*i)->q_34[k]);

			fclose(f);
		}

		if(j < result_nr / 2)
		{
			parameter_description[j] = "";
			std::ostringstream os;
			os << "(";
			if((*i)->parameter.rememberAndReuseSamplingError)
				os << "Remember Sampling Error, ";
			if((*i)->parameter.useExactRandomDistribution)
				os << "Exact Random Distribution, ";
			os << "PopSize: " << (*i)->parameter.popSize << ")";
			parameter_description[j] = os.str();
		}
			
		
		delete (*i);
	}

	std::string gnuplot_file_name;
	{
		std::ostringstream os;
		os << basename << result_nr << ".plot";
		gnuplot_file_name = os.str();
	}
	
	FILE* f;
	if ((f = fopen(gnuplot_file_name.c_str(), "w")) == NULL)
		fprintf(stderr, "Cannot open %s\n", "output_file");
	else
	{
		fprintf(f, "set xlabel 'generation'\nset ylabel 'fitness'\nset terminal png large size 750,500\nset style line 1 lt 1 lw 3\nset style line 2 lt 2 lw 3\nset style line 3 lt 1 lw 1\nset style line 4 lt 2 lw 1\n\n"); 
		for(int i = 0; i < result_nr/2; i++)
		{
			fprintf(f, "set output \"%s/%s%i.png\"\n", basename.c_str(), basename.c_str(), i);
			fprintf(f, "set title '%s %s'\n", description.c_str(), parameter_description[i].c_str());
			fprintf(f, "plot \"%s/%s%i.gnp\" ti \"Laplace\" with lines ls 1, \"%s/%s%i.gnp\" ti \"Corrected distribution\" with lines ls 2, ", basename.c_str(), basename.c_str(), i, basename.c_str(), basename.c_str(), i + result_nr / 2);
			fprintf(f, "\"%s/%s%i_quartil.gnp\" ti \"Laplace 1/4 and 3/4 quartil\" with lines ls 3, \"%s/%s%i_quartil.gnp\" ti \"Corrected distribution 1/4 and 3/4 quartil\" with lines ls 4\n", basename.c_str(), basename.c_str(), i, basename.c_str(), basename.c_str(), i + result_nr / 2);
    		}
		fclose(f);
	}
	char a = getchar();
	return 0;   
}
