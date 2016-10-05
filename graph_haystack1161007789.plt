set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 4 lw 3
set style line 5 lt 5 lw 3
set style line 6 lt 6 lw 3
set style line 7 lt 7 lw 3

set xlabel 'generation'
set ylabel 'fitness'
set terminal png size 500,350
set key right bottom
set output "graph_haystack1161007789/graph_haystack000_fitness.png"
set title 'Needle in a Haystack (PopSize: 10)'
plot "graph_haystack1161007789/graph_haystack0_fitness.gnp" ti "NoC" with lines ls 1, "graph_haystack1161007789/graph_haystack1_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_haystack1161007789/graph_haystack2_fitness.gnp" ti "EDC+ERD" with lines ls 3, "graph_haystack1161007789/graph_haystack3_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_haystack1161007789/graph_haystack4_fitness.gnp" ti "LRC+ERD" with lines ls 5, "graph_haystack1161007789/graph_haystack5_fitness.gnp" ti "CD" with lines ls 6, "graph_haystack1161007789/graph_haystack6_fitness.gnp" ti "CD+ERD" with lines ls 7

set output "graph_haystack1161007789/graph_haystack001_fitness.png"
set title 'Needle in a Haystack (PopSize: 50)'
plot "graph_haystack1161007789/graph_haystack7_fitness.gnp" ti "NoC" with lines ls 1, "graph_haystack1161007789/graph_haystack8_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_haystack1161007789/graph_haystack9_fitness.gnp" ti "EDC+ERD" with lines ls 3, "graph_haystack1161007789/graph_haystack10_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_haystack1161007789/graph_haystack11_fitness.gnp" ti "LRC+ERD" with lines ls 5, "graph_haystack1161007789/graph_haystack12_fitness.gnp" ti "CD" with lines ls 6, "graph_haystack1161007789/graph_haystack13_fitness.gnp" ti "CD+ERD" with lines ls 7



set xlabel 'generation'
set ylabel 'diversity p(1-p)'
set terminal png size 500,350

set output "graph_haystack1161007789/graph_haystack000_diversity.png"
set title 'Needle in a Haystack (PopSize: 10)'
plot "graph_haystack1161007789/graph_haystack0_diversity.gnp" ti "NoC" with lines ls 1, "graph_haystack1161007789/graph_haystack1_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_haystack1161007789/graph_haystack2_diversity.gnp" ti "EDC+ERD" with lines ls 3, "graph_haystack1161007789/graph_haystack3_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_haystack1161007789/graph_haystack4_diversity.gnp" ti "LRC+ERD" with lines ls 5, "graph_haystack1161007789/graph_haystack5_diversity.gnp" ti "CD" with lines ls 6, "graph_haystack1161007789/graph_haystack6_diversity.gnp" ti "CD+ERD" with lines ls 7

set output "graph_haystack1161007789/graph_haystack001_diversity.png"
set title 'Needle in a Haystack (PopSize: 50)'
plot "graph_haystack1161007789/graph_haystack7_diversity.gnp" ti "NoC" with lines ls 1, "graph_haystack1161007789/graph_haystack8_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_haystack1161007789/graph_haystack9_diversity.gnp" ti "EDC+ERD" with lines ls 3, "graph_haystack1161007789/graph_haystack10_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_haystack1161007789/graph_haystack11_diversity.gnp" ti "LRC+ERD" with lines ls 5, "graph_haystack1161007789/graph_haystack12_diversity.gnp" ti "CD" with lines ls 6, "graph_haystack1161007789/graph_haystack13_diversity.gnp" ti "CD+ERD" with lines ls 7



