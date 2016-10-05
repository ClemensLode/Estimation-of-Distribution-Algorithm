set xlabel 'generation'
set ylabel 'fitness'
set terminal png large size 750,500
set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 4 lw 3
set style line 5 lt 5 lw 3
set style line 6 lt 6 lw 3
set style line 7 lt 7 lw 3
set style line 8 lt 8 lw 3
set style line 9 lt 9 lw 3
set style line 10 lt 1 lw 1
set style line 11 lt 2 lw 1
set style line 12 lt 3 lw 1
set style line 13 lt 4 lw 1
set style line 14 lt 5 lw 1
set style line 15 lt 6 lw 1
set style line 16 lt 7 lw 1
set style line 17 lt 8 lw 1
set style line 18 lt 9 lw 1

set output "graph_onemax/graph_onemax000_fitness.png"
set title 'OneMax (PopSize: 40)'
plot "graph_onemax/graph_onemax0_fitness.gnp" ti "No correction" with lines ls 1, "graph_onemax/graph_onemax1_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax/graph_onemax2_fitness.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax/graph_onemax3_fitness.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax/graph_onemax4_fitness.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax/graph_onemax5_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax/graph_onemax6_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_onemax/graph_onemax7_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 8

set output "graph_onemax/graph_onemax001_fitness.png"
set title 'OneMax (Exact Random Distribution, PopSize: 40)'
plot "graph_onemax/graph_onemax9_fitness.gnp" ti "No correction" with lines ls 1, "graph_onemax/graph_onemax10_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax/graph_onemax11_fitness.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax/graph_onemax12_fitness.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax/graph_onemax13_fitness.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax/graph_onemax14_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax/graph_onemax15_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_onemax/graph_onemax16_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 8



set xlabel 'generation'
set ylabel 'diversity p*(1-p)'
set terminal png large size 750,500

set output "graph_onemax/graph_onemax000_diversity.png"
set title 'OneMax (PopSize: 40)'
plot "graph_onemax/graph_onemax0_diversity.gnp" ti "No correction" with lines ls 1, "graph_onemax/graph_onemax1_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax/graph_onemax2_diversity.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax/graph_onemax3_diversity.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax/graph_onemax4_diversity.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax/graph_onemax5_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax/graph_onemax6_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_onemax/graph_onemax7_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 8, "graph_onemax/graph_onemax8_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 9

set output "graph_onemax/graph_onemax001_diversity.png"
set title 'OneMax (Exact Random Distribution, PopSize: 40)'
plot "graph_onemax/graph_onemax9_diversity.gnp" ti "No correction" with lines ls 1, "graph_onemax/graph_onemax10_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax/graph_onemax11_diversity.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax/graph_onemax12_diversity.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax/graph_onemax13_diversity.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax/graph_onemax14_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax/graph_onemax15_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_onemax/graph_onemax16_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 8, "graph_onemax/graph_onemax17_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 9


