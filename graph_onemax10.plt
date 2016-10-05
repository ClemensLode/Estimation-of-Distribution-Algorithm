set xlabel 'generation'
set ylabel 'fitness'
set terminal png large size 750,500
set style line 1 lt 1 lw 3
set style line 2 lt 1 lw 1

set output "graph_onemax/graph_onemax0_fitness.png"
set title 'OneMax (PopSize: 4)'
plot "graph_onemax/graph_onemax0_fitness.gnp" ti "Test" with lines ls 1, "graph_onemax/graph_onemax0_fitness_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_onemax/graph_onemax1_fitness.png"
set title 'OneMax (Exact Random Distribution, PopSize: 4)'
plot "graph_onemax/graph_onemax1_fitness.gnp" ti "Test" with lines ls 1, "graph_onemax/graph_onemax1_fitness_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_onemax/graph_onemax2_fitness.png"
set title 'OneMax (PopSize: 16)'
plot "graph_onemax/graph_onemax2_fitness.gnp" ti "Test" with lines ls 1, "graph_onemax/graph_onemax2_fitness_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_onemax/graph_onemax3_fitness.png"
set title 'OneMax (Exact Random Distribution, PopSize: 16)'
plot "graph_onemax/graph_onemax3_fitness.gnp" ti "Test" with lines ls 1, "graph_onemax/graph_onemax3_fitness_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_onemax/graph_onemax4_fitness.png"
set title 'OneMax (PopSize: 28)'
plot "graph_onemax/graph_onemax4_fitness.gnp" ti "Test" with lines ls 1, "graph_onemax/graph_onemax4_fitness_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_onemax/graph_onemax5_fitness.png"
set title 'OneMax (Exact Random Distribution, PopSize: 28)'
plot "graph_onemax/graph_onemax5_fitness.gnp" ti "Test" with lines ls 1, "graph_onemax/graph_onemax5_fitness_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_onemax/graph_onemax6_fitness.png"
set title 'OneMax (PopSize: 40)'
plot "graph_onemax/graph_onemax6_fitness.gnp" ti "Test" with lines ls 1, "graph_onemax/graph_onemax6_fitness_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_onemax/graph_onemax7_fitness.png"
set title 'OneMax (Exact Random Distribution, PopSize: 40)'
plot "graph_onemax/graph_onemax7_fitness.gnp" ti "Test" with lines ls 1, "graph_onemax/graph_onemax7_fitness_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_onemax/graph_onemax8_fitness.png"
set title 'OneMax (PopSize: 52)'
plot "graph_onemax/graph_onemax8_fitness.gnp" ti "Test" with lines ls 1, "graph_onemax/graph_onemax8_fitness_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_onemax/graph_onemax9_fitness.png"
set title 'OneMax (Exact Random Distribution, PopSize: 52)'
plot "graph_onemax/graph_onemax9_fitness.gnp" ti "Test" with lines ls 1, "graph_onemax/graph_onemax9_fitness_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2



set xlabel 'generation'
set ylabel 'diversity p*(1-p)'
set terminal png large size 750,500

set output "graph_onemax/graph_onemax0_diversity.png"
set title 'OneMax (PopSize: 4)'
plot "graph_onemax/graph_onemax0_diversity.gnp" ti "Test" with lines ls 1, "graph_onemax/graph_onemax0_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_onemax/graph_onemax1_diversity.png"
set title 'OneMax (Exact Random Distribution, PopSize: 4)'
plot "graph_onemax/graph_onemax1_diversity.gnp" ti "Test" with lines ls 1, "graph_onemax/graph_onemax1_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_onemax/graph_onemax2_diversity.png"
set title 'OneMax (PopSize: 16)'
plot "graph_onemax/graph_onemax2_diversity.gnp" ti "Test" with lines ls 1, "graph_onemax/graph_onemax2_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_onemax/graph_onemax3_diversity.png"
set title 'OneMax (Exact Random Distribution, PopSize: 16)'
plot "graph_onemax/graph_onemax3_diversity.gnp" ti "Test" with lines ls 1, "graph_onemax/graph_onemax3_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_onemax/graph_onemax4_diversity.png"
set title 'OneMax (PopSize: 28)'
plot "graph_onemax/graph_onemax4_diversity.gnp" ti "Test" with lines ls 1, "graph_onemax/graph_onemax4_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_onemax/graph_onemax5_diversity.png"
set title 'OneMax (Exact Random Distribution, PopSize: 28)'
plot "graph_onemax/graph_onemax5_diversity.gnp" ti "Test" with lines ls 1, "graph_onemax/graph_onemax5_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_onemax/graph_onemax6_diversity.png"
set title 'OneMax (PopSize: 40)'
plot "graph_onemax/graph_onemax6_diversity.gnp" ti "Test" with lines ls 1, "graph_onemax/graph_onemax6_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_onemax/graph_onemax7_diversity.png"
set title 'OneMax (Exact Random Distribution, PopSize: 40)'
plot "graph_onemax/graph_onemax7_diversity.gnp" ti "Test" with lines ls 1, "graph_onemax/graph_onemax7_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_onemax/graph_onemax8_diversity.png"
set title 'OneMax (PopSize: 52)'
plot "graph_onemax/graph_onemax8_diversity.gnp" ti "Test" with lines ls 1, "graph_onemax/graph_onemax8_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_onemax/graph_onemax9_diversity.png"
set title 'OneMax (Exact Random Distribution, PopSize: 52)'
plot "graph_onemax/graph_onemax9_diversity.gnp" ti "Test" with lines ls 1, "graph_onemax/graph_onemax9_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2



