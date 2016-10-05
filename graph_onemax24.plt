set xlabel 'generation'
set ylabel 'fitness'
set terminal png large size 750,500
set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 1 lw 1
set style line 4 lt 2 lw 1

set output "graph_onemax/graph_onemax000_fitness.png"
set title 'OneMax (PopSize: 10, ProbSize: 100)'
plot "graph_onemax/graph_onemax0_fitness.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax1_fitness.gnp" ti "Corrected distribution" with lines ls 2

set output "graph_onemax/graph_onemax001_fitness.png"
set title 'OneMax (Exact random distribution, PopSize: 10, ProbSize: 100)'
plot "graph_onemax/graph_onemax2_fitness.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax3_fitness.gnp" ti "Corrected distribution" with lines ls 2

set output "graph_onemax/graph_onemax002_fitness.png"
set title 'OneMax (PopSize: 22, ProbSize: 100)'
plot "graph_onemax/graph_onemax4_fitness.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax5_fitness.gnp" ti "Corrected distribution" with lines ls 2

set output "graph_onemax/graph_onemax003_fitness.png"
set title 'OneMax (Exact random distribution, PopSize: 22, ProbSize: 100)'
plot "graph_onemax/graph_onemax6_fitness.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax7_fitness.gnp" ti "Corrected distribution" with lines ls 2

set output "graph_onemax/graph_onemax004_fitness.png"
set title 'OneMax (PopSize: 48, ProbSize: 100)'
plot "graph_onemax/graph_onemax8_fitness.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax9_fitness.gnp" ti "Corrected distribution" with lines ls 2

set output "graph_onemax/graph_onemax005_fitness.png"
set title 'OneMax (Exact random distribution, PopSize: 48, ProbSize: 100)'
plot "graph_onemax/graph_onemax10_fitness.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax11_fitness.gnp" ti "Corrected distribution" with lines ls 2

set output "graph_onemax/graph_onemax006_fitness.png"
set title 'OneMax (PopSize: 105, ProbSize: 100)'
plot "graph_onemax/graph_onemax12_fitness.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax13_fitness.gnp" ti "Corrected distribution" with lines ls 2

set output "graph_onemax/graph_onemax007_fitness.png"
set title 'OneMax (Exact random distribution, PopSize: 105, ProbSize: 100)'
plot "graph_onemax/graph_onemax14_fitness.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax15_fitness.gnp" ti "Corrected distribution" with lines ls 2

set output "graph_onemax/graph_onemax008_fitness.png"
set title 'OneMax (PopSize: 229, ProbSize: 100)'
plot "graph_onemax/graph_onemax16_fitness.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax17_fitness.gnp" ti "Corrected distribution" with lines ls 2

set output "graph_onemax/graph_onemax009_fitness.png"
set title 'OneMax (Exact random distribution, PopSize: 229, ProbSize: 100)'
plot "graph_onemax/graph_onemax18_fitness.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax19_fitness.gnp" ti "Corrected distribution" with lines ls 2

set output "graph_onemax/graph_onemax010_fitness.png"
set title 'OneMax (PopSize: 500, ProbSize: 100)'
plot "graph_onemax/graph_onemax20_fitness.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax21_fitness.gnp" ti "Corrected distribution" with lines ls 2

set output "graph_onemax/graph_onemax011_fitness.png"
set title 'OneMax (Exact random distribution, PopSize: 500, ProbSize: 100)'
plot "graph_onemax/graph_onemax22_fitness.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax23_fitness.gnp" ti "Corrected distribution" with lines ls 2



set xlabel 'generation'
set ylabel 'diversity p*(1-p)'
set terminal png large size 750,500

set output "graph_onemax/graph_onemax000_diversity.png"
set title 'OneMax (PopSize: 10, ProbSize: 100)'
plot "graph_onemax/graph_onemax0_diversity.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax1_diversity.gnp" ti "Corrected distribution" with lines ls 2

set output "graph_onemax/graph_onemax001_diversity.png"
set title 'OneMax (Exact random distribution, PopSize: 10, ProbSize: 100)'
plot "graph_onemax/graph_onemax2_diversity.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax3_diversity.gnp" ti "Corrected distribution" with lines ls 2

set output "graph_onemax/graph_onemax002_diversity.png"
set title 'OneMax (PopSize: 22, ProbSize: 100)'
plot "graph_onemax/graph_onemax4_diversity.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax5_diversity.gnp" ti "Corrected distribution" with lines ls 2

set output "graph_onemax/graph_onemax003_diversity.png"
set title 'OneMax (Exact random distribution, PopSize: 22, ProbSize: 100)'
plot "graph_onemax/graph_onemax6_diversity.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax7_diversity.gnp" ti "Corrected distribution" with lines ls 2

set output "graph_onemax/graph_onemax004_diversity.png"
set title 'OneMax (PopSize: 48, ProbSize: 100)'
plot "graph_onemax/graph_onemax8_diversity.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax9_diversity.gnp" ti "Corrected distribution" with lines ls 2

set output "graph_onemax/graph_onemax005_diversity.png"
set title 'OneMax (Exact random distribution, PopSize: 48, ProbSize: 100)'
plot "graph_onemax/graph_onemax10_diversity.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax11_diversity.gnp" ti "Corrected distribution" with lines ls 2

set output "graph_onemax/graph_onemax006_diversity.png"
set title 'OneMax (PopSize: 105, ProbSize: 100)'
plot "graph_onemax/graph_onemax12_diversity.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax13_diversity.gnp" ti "Corrected distribution" with lines ls 2

set output "graph_onemax/graph_onemax007_diversity.png"
set title 'OneMax (Exact random distribution, PopSize: 105, ProbSize: 100)'
plot "graph_onemax/graph_onemax14_diversity.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax15_diversity.gnp" ti "Corrected distribution" with lines ls 2

set output "graph_onemax/graph_onemax008_diversity.png"
set title 'OneMax (PopSize: 229, ProbSize: 100)'
plot "graph_onemax/graph_onemax16_diversity.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax17_diversity.gnp" ti "Corrected distribution" with lines ls 2

set output "graph_onemax/graph_onemax009_diversity.png"
set title 'OneMax (Exact random distribution, PopSize: 229, ProbSize: 100)'
plot "graph_onemax/graph_onemax18_diversity.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax19_diversity.gnp" ti "Corrected distribution" with lines ls 2

set output "graph_onemax/graph_onemax010_diversity.png"
set title 'OneMax (PopSize: 500, ProbSize: 100)'
plot "graph_onemax/graph_onemax20_diversity.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax21_diversity.gnp" ti "Corrected distribution" with lines ls 2

set output "graph_onemax/graph_onemax011_diversity.png"
set title 'OneMax (Exact random distribution, PopSize: 500, ProbSize: 100)'
plot "graph_onemax/graph_onemax22_diversity.gnp" ti "Exact random correction" with lines ls 1, "graph_onemax/graph_onemax23_diversity.gnp" ti "Corrected distribution" with lines ls 2



