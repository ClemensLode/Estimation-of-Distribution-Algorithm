set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3

set xlabel 'generation'
set ylabel 'fitness'
set terminal png size 500,350
set key right bottom
set output "graph_nk1161600056/graph_nk000_fitness.png"
set title 'NK problem (PopSize: 50)'
plot "graph_nk1161600056/graph_nk0_fitness.gnp" ti "NoC+bd, b=0" with lines ls 1, "graph_nk1161600056/graph_nk1_fitness.gnp" ti "NoC+bd, b=0.0025" with lines ls 2, "graph_nk1161600056/graph_nk2_fitness.gnp" ti "NoC+bd, b=0.005" with lines ls 3



set xlabel 'generation'
set ylabel 'diversity p(1-p)'
set terminal png size 500,350

set output "graph_nk1161600056/graph_nk000_diversity.png"
set title 'NK problem (PopSize: 50)'
plot "graph_nk1161600056/graph_nk0_diversity.gnp" ti "NoC+bd, b=0" with lines ls 1, "graph_nk1161600056/graph_nk1_diversity.gnp" ti "NoC+bd, b=0.0025" with lines ls 2, "graph_nk1161600056/graph_nk2_diversity.gnp" ti "NoC+bd, b=0.005" with lines ls 3



