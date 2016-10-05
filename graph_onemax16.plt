set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 4 lw 3

set xlabel 'generation'
set ylabel 'fitness'
set terminal png large size 750,500
set key right bottom
set output "graph_onemax/graph_onemax000_fitness.png"
set title 'OneMax (PopSize: 10)'
plot "graph_onemax/graph_onemax0_fitness.gnp" ti "No correction" with lines ls 1, "graph_onemax/graph_onemax1_fitness.gnp" ti "No correction + Exact distribution" with lines ls 2, "graph_onemax/graph_onemax2_fitness.gnp" ti "Exact distribution correction + Exact distribution" with lines ls 3, "graph_onemax/graph_onemax3_fitness.gnp" ti "Corrected distribution + Exact distribution" with lines ls 4

set output "graph_onemax/graph_onemax001_fitness.png"
set title 'OneMax (PopSize: 10)'
plot "graph_onemax/graph_onemax4_fitness.gnp" ti "No correction" with lines ls 1, "graph_onemax/graph_onemax5_fitness.gnp" ti "No correction + Exact distribution" with lines ls 2, "graph_onemax/graph_onemax6_fitness.gnp" ti "Exact distribution correction + Exact distribution" with lines ls 3, "graph_onemax/graph_onemax7_fitness.gnp" ti "Corrected distribution + Exact distribution" with lines ls 4

set output "graph_onemax/graph_onemax002_fitness.png"
set title 'OneMax (PopSize: 50)'
plot "graph_onemax/graph_onemax8_fitness.gnp" ti "No correction" with lines ls 1, "graph_onemax/graph_onemax9_fitness.gnp" ti "No correction + Exact distribution" with lines ls 2, "graph_onemax/graph_onemax10_fitness.gnp" ti "Exact distribution correction + Exact distribution" with lines ls 3, "graph_onemax/graph_onemax11_fitness.gnp" ti "Corrected distribution + Exact distribution" with lines ls 4

set output "graph_onemax/graph_onemax003_fitness.png"
set title 'OneMax (PopSize: 50)'
plot "graph_onemax/graph_onemax12_fitness.gnp" ti "No correction" with lines ls 1, "graph_onemax/graph_onemax13_fitness.gnp" ti "No correction + Exact distribution" with lines ls 2, "graph_onemax/graph_onemax14_fitness.gnp" ti "Exact distribution correction + Exact distribution" with lines ls 3, "graph_onemax/graph_onemax15_fitness.gnp" ti "Corrected distribution + Exact distribution" with lines ls 4



set xlabel 'generation'
set ylabel 'diversity p*(1-p)'
set terminal png large size 750,500

set output "graph_onemax/graph_onemax000_diversity.png"
set title 'OneMax (PopSize: 10)'
plot "graph_onemax/graph_onemax0_diversity.gnp" ti "No correction" with lines ls 1, "graph_onemax/graph_onemax1_diversity.gnp" ti "No correction + Exact distribution" with lines ls 2, "graph_onemax/graph_onemax2_diversity.gnp" ti "Exact distribution correction + Exact distribution" with lines ls 3, "graph_onemax/graph_onemax3_diversity.gnp" ti "Corrected distribution + Exact distribution" with lines ls 4

set output "graph_onemax/graph_onemax001_diversity.png"
set title 'OneMax (PopSize: 10)'
plot "graph_onemax/graph_onemax4_diversity.gnp" ti "No correction" with lines ls 1, "graph_onemax/graph_onemax5_diversity.gnp" ti "No correction + Exact distribution" with lines ls 2, "graph_onemax/graph_onemax6_diversity.gnp" ti "Exact distribution correction + Exact distribution" with lines ls 3, "graph_onemax/graph_onemax7_diversity.gnp" ti "Corrected distribution + Exact distribution" with lines ls 4

set output "graph_onemax/graph_onemax002_diversity.png"
set title 'OneMax (PopSize: 50)'
plot "graph_onemax/graph_onemax8_diversity.gnp" ti "No correction" with lines ls 1, "graph_onemax/graph_onemax9_diversity.gnp" ti "No correction + Exact distribution" with lines ls 2, "graph_onemax/graph_onemax10_diversity.gnp" ti "Exact distribution correction + Exact distribution" with lines ls 3, "graph_onemax/graph_onemax11_diversity.gnp" ti "Corrected distribution + Exact distribution" with lines ls 4

set output "graph_onemax/graph_onemax003_diversity.png"
set title 'OneMax (PopSize: 50)'
plot "graph_onemax/graph_onemax12_diversity.gnp" ti "No correction" with lines ls 1, "graph_onemax/graph_onemax13_diversity.gnp" ti "No correction + Exact distribution" with lines ls 2, "graph_onemax/graph_onemax14_diversity.gnp" ti "Exact distribution correction + Exact distribution" with lines ls 3, "graph_onemax/graph_onemax15_diversity.gnp" ti "Corrected distribution + Exact distribution" with lines ls 4



