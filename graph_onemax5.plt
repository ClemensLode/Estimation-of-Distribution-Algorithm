set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 4 lw 3
set style line 5 lt 5 lw 3
set style line 6 lt 1 lw 1
set style line 7 lt 2 lw 1
set style line 8 lt 3 lw 1
set style line 9 lt 4 lw 1
set style line 10 lt 5 lw 1

set xlabel 'generation'
set ylabel 'fitness'
set terminal png large size 750,500
set key right bottom
set output "graph_onemax/graph_onemax000_fitness.png"
set title 'OneMax (PopSize: 10)'
plot "graph_onemax/graph_onemax0_fitness.gnp" ti "No correction" with lines ls 1, "graph_onemax/graph_onemax1_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax/graph_onemax2_fitness.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax/graph_onemax3_fitness.gnp" ti "Corrected distribution" with lines ls 4, "graph_onemax/graph_onemax4_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 5



set xlabel 'generation'
set ylabel 'diversity p*(1-p)'
set terminal png large size 750,500

set output "graph_onemax/graph_onemax000_diversity.png"
set title 'OneMax (PopSize: 10)'
plot "graph_onemax/graph_onemax0_diversity.gnp" ti "No correction" with lines ls 1, "graph_onemax/graph_onemax1_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax/graph_onemax2_diversity.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax/graph_onemax3_diversity.gnp" ti "Corrected distribution" with lines ls 4, "graph_onemax/graph_onemax4_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 5



