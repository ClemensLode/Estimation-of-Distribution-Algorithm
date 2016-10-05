#include "individual.hpp"
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <sstream>

int Individual::maxLength = 0;
int Individual::k = 0;
int Individual::run = 0;

Individual::Individual():
	fitness(-1),
	bitstring(new int[maxLength])
{}

Individual::~Individual()
{
	delete bitstring;
}

void Individual::createOnEstimatedDistribution(double* p)
{
	fitness = -1;
	for(int i = 0; i < maxLength; i++)
		bitstring[i] = rand() < RAND_MAX*p[i] ? 1 : 0;
}

int* Individual::goalString = 0;

void Individual::printIndividualFitnessLandscape(std::string basename, std::string title, std::string xlabel, double* fitness_array, int fitness_entries)
{
// Die besten Fitnesswerte aller Generationen aller Durchlaeufe sichern ok
// - Fitnesswerte fuer jede einzelne Generation sortieren, nur die mittleren 50% (25%-75%) fuer Durchschnitt hernehmen
// - 1/4 und 3/4 Stichprobenquartil berechnen
	FILE* f;
	std::string real_basename = "graph_" + basename + "_fitness_landscape";
	std::string data_file_name = real_basename + ".gnp";
	std::string gnuplot_file_name = real_basename + ".plt";
	if ((f = fopen(data_file_name.c_str(), "w")) == NULL)
		fprintf(stderr, "Cannot open %s\n", "output_file");
	else
	{
		for(int i = 0; i < fitness_entries; i++)
		{
			fprintf(f, "%i %f\n", i, fitness_array[i]);
		}
		fclose(f);
	}
	if ((f = fopen(gnuplot_file_name.c_str(), "w")) == NULL)
		fprintf(stderr, "Cannot open %s\n", "output_file");
	else
	{
		fprintf(f, "set style line 1 lt 1 lw 3\n");
		fprintf(f, "set xlabel '%s'\nset ylabel 'fitness'\nset terminal png size 500,350\nset key right bottom\n", xlabel.c_str());
		fprintf(f, "set output \"%s.png\"\n", real_basename.c_str());
		fprintf(f, "set title '%s'\n", title.c_str());
		fprintf(f, "plot ");
		fprintf(f, "\"%s.gnp\" ti \"fitness graph\" with lines ls %i", real_basename.c_str(),1);
//							fprintf(f, ", ");
		fprintf(f, "\n\n");
	} 
	fclose(f);
}
