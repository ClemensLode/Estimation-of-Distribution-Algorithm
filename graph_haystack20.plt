set xlabel 'generation'
set ylabel 'fitness'
set terminal png large size 750,500
set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 1 lw 1
set style line 4 lt 2 lw 1

set output "graph_haystack/graph_haystack0_fitness.png"
set title 'Needle in a haystack (PopSize: 4)'
plot "graph_haystack/graph_haystack0_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack0_fitness_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack1_fitness.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack1_fitness_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack1_fitness.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 4)'
plot "graph_haystack/graph_haystack2_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack2_fitness_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack3_fitness.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack3_fitness_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack2_fitness.png"
set title 'Needle in a haystack (PopSize: 8)'
plot "graph_haystack/graph_haystack4_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack4_fitness_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack5_fitness.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack5_fitness_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack3_fitness.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 8)'
plot "graph_haystack/graph_haystack6_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack6_fitness_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack7_fitness.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack7_fitness_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack4_fitness.png"
set title 'Needle in a haystack (PopSize: 12)'
plot "graph_haystack/graph_haystack8_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack8_fitness_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack9_fitness.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack9_fitness_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack5_fitness.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 12)'
plot "graph_haystack/graph_haystack10_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack10_fitness_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack11_fitness.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack11_fitness_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack6_fitness.png"
set title 'Needle in a haystack (PopSize: 16)'
plot "graph_haystack/graph_haystack12_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack12_fitness_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack13_fitness.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack13_fitness_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack7_fitness.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 16)'
plot "graph_haystack/graph_haystack14_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack14_fitness_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack15_fitness.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack15_fitness_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack8_fitness.png"
set title 'Needle in a haystack (PopSize: 20)'
plot "graph_haystack/graph_haystack16_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack16_fitness_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack17_fitness.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack17_fitness_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack9_fitness.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 20)'
plot "graph_haystack/graph_haystack18_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack18_fitness_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack19_fitness.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack19_fitness_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4



set xlabel 'generation'
set ylabel 'diversity p*(1-p)'
set terminal png large size 750,500

set output "graph_haystack/graph_haystack0_diversity.png"
set title 'Needle in a haystack (PopSize: 4)'
plot "graph_haystack/graph_haystack0_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack0_diversity_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack1_diversity.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack1_diversity_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack1_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 4)'
plot "graph_haystack/graph_haystack2_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack2_diversity_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack3_diversity.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack3_diversity_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack2_diversity.png"
set title 'Needle in a haystack (PopSize: 8)'
plot "graph_haystack/graph_haystack4_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack4_diversity_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack5_diversity.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack5_diversity_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack3_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 8)'
plot "graph_haystack/graph_haystack6_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack6_diversity_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack7_diversity.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack7_diversity_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack4_diversity.png"
set title 'Needle in a haystack (PopSize: 12)'
plot "graph_haystack/graph_haystack8_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack8_diversity_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack9_diversity.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack9_diversity_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack5_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 12)'
plot "graph_haystack/graph_haystack10_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack10_diversity_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack11_diversity.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack11_diversity_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack6_diversity.png"
set title 'Needle in a haystack (PopSize: 16)'
plot "graph_haystack/graph_haystack12_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack12_diversity_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack13_diversity.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack13_diversity_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack7_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 16)'
plot "graph_haystack/graph_haystack14_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack14_diversity_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack15_diversity.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack15_diversity_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack8_diversity.png"
set title 'Needle in a haystack (PopSize: 20)'
plot "graph_haystack/graph_haystack16_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack16_diversity_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack17_diversity.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack17_diversity_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4

set output "graph_haystack/graph_haystack9_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 20)'
plot "graph_haystack/graph_haystack18_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 1, "graph_haystack/graph_haystack18_diversity_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack19_diversity.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack19_diversity_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 4



