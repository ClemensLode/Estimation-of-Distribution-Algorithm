set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 4 lw 3

set xlabel 'generation'
set ylabel 'fitness'
set terminal png size 500,350
set key right bottom
set output "graph_nk1161600368/graph_nk000_fitness.png"
set title 'NK problem (PopSize: 50)'
plot "graph_nk1161600368/graph_nk0_fitness.gnp" ti "NoC" with lines ls 1, "graph_nk1161600368/graph_nk1_fitness.gnp" ti "EDC+ERD" with lines ls 2, "graph_nk1161600368/graph_nk2_fitness.gnp" ti "LC, a=0.01" with lines ls 3, "graph_nk1161600368/graph_nk3_fitness.gnp" ti "CD" with lines ls 4



set xlabel 'generation'
set ylabel 'diversity p(1-p)'
set terminal png size 500,350

set output "graph_nk1161600368/graph_nk000_diversity.png"
set title 'NK problem (PopSize: 50)'
plot "graph_nk1161600368/graph_nk0_diversity.gnp" ti "NoC" with lines ls 1, "graph_nk1161600368/graph_nk1_diversity.gnp" ti "EDC+ERD" with lines ls 2, "graph_nk1161600368/graph_nk2_diversity.gnp" ti "LC, a=0.01" with lines ls 3, "graph_nk1161600368/graph_nk3_diversity.gnp" ti "CD" with lines ls 4



