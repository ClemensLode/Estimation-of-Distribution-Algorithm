set xlabel 'generation'
set ylabel 'fitness'
set terminal png large size 750,500
set style line 1 lt 0 lw 3
set style line 2 lt 1 lw 3
set style line 3 lt 0 lw 1
set style line 4 lt 1 lw 1

set output "graph_haystack/graph_haystack0_fitness.png"
set title 'Needle in a haystack (PopSize: 20)'
plot "graph_haystack/graph_haystack0_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack0_fitness_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack1_fitness.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack1_fitness_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack1_fitness.png"
set title 'Needle in a haystack (PopSize: 40)'
plot "graph_haystack/graph_haystack2_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack2_fitness_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack3_fitness.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack3_fitness_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack2_fitness.png"
set title 'Needle in a haystack (PopSize: 60)'
plot "graph_haystack/graph_haystack4_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack4_fitness_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack5_fitness.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack5_fitness_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack3_fitness.png"
set title 'Needle in a haystack (PopSize: 80)'
plot "graph_haystack/graph_haystack6_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack6_fitness_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack7_fitness.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack7_fitness_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack4_fitness.png"
set title 'Needle in a haystack (PopSize: 100)'
plot "graph_haystack/graph_haystack8_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack8_fitness_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack9_fitness.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack9_fitness_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4



set xlabel 'generation'
set ylabel 'diversity p*(1-p)'
set terminal png large size 750,500

set output "graph_haystack/graph_haystack0_diversity.png"
set title 'Needle in a haystack (PopSize: 20)'
plot "graph_haystack/graph_haystack0_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack0_diversity_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack1_diversity.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack1_diversity_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack1_diversity.png"
set title 'Needle in a haystack (PopSize: 40)'
plot "graph_haystack/graph_haystack2_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack2_diversity_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack3_diversity.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack3_diversity_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack2_diversity.png"
set title 'Needle in a haystack (PopSize: 60)'
plot "graph_haystack/graph_haystack4_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack4_diversity_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack5_diversity.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack5_diversity_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack3_diversity.png"
set title 'Needle in a haystack (PopSize: 80)'
plot "graph_haystack/graph_haystack6_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack6_diversity_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack7_diversity.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack7_diversity_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack4_diversity.png"
set title 'Needle in a haystack (PopSize: 100)'
plot "graph_haystack/graph_haystack8_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack8_diversity_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack9_diversity.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack9_diversity_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4



