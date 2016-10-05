set xlabel 'generation'
set ylabel 'fitness'
set terminal png large size 750,500
set style line 1 lt 1 lw 3
set style line 2 lt 1 lw 1

set output "graph_onemax/graph_onemax000_fitness.png"
set title 'OneMax (PopSize: 10)'
plot "graph_onemax/graph_onemax0_fitness.gnp" ti "No correction" with lines ls 1

set output "graph_onemax/graph_onemax001_fitness.png"
set title 'OneMax (Exact random distribution, PopSize: 10)'
plot "graph_onemax/graph_onemax1_fitness.gnp" ti "No correction" with lines ls 1

set output "graph_onemax/graph_onemax002_fitness.png"
set title 'OneMax (PopSize: 100)'
plot "graph_onemax/graph_onemax2_fitness.gnp" ti "No correction" with lines ls 1

set output "graph_onemax/graph_onemax003_fitness.png"
set title 'OneMax (Exact random distribution, PopSize: 100)'
plot "graph_onemax/graph_onemax3_fitness.gnp" ti "No correction" with lines ls 1



set xlabel 'generation'
set ylabel 'diversity p*(1-p)'
set terminal png large size 750,500

set output "graph_onemax/graph_onemax000_diversity.png"
set title 'OneMax (PopSize: 10)'
plot "graph_onemax/graph_onemax0_diversity.gnp" ti "No correction" with lines ls 1

set output "graph_onemax/graph_onemax001_diversity.png"
set title 'OneMax (Exact random distribution, PopSize: 10)'
plot "graph_onemax/graph_onemax1_diversity.gnp" ti "No correction" with lines ls 1

set output "graph_onemax/graph_onemax002_diversity.png"
set title 'OneMax (PopSize: 100)'
plot "graph_onemax/graph_onemax2_diversity.gnp" ti "No correction" with lines ls 1

set output "graph_onemax/graph_onemax003_diversity.png"
set title 'OneMax (Exact random distribution, PopSize: 100)'
plot "graph_onemax/graph_onemax3_diversity.gnp" ti "No correction" with lines ls 1



