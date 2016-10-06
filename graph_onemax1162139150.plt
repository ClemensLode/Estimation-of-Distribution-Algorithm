set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3

set xlabel 'generation'
set ylabel 'fitness'
set terminal png size 500,350
set key right bottom
set output "graph_onemax1162139150/graph_onemax000_fitness.png"
set title 'OneMax (PopSize: 50)'
plot "graph_onemax1162139150/graph_onemax0_fitness.gnp" ti "NoC, sel=10%" with lines ls 1, "graph_onemax1162139150/graph_onemax1_fitness.gnp" ti "NoC, sel=50%" with lines ls 2, "graph_onemax1162139150/graph_onemax2_fitness.gnp" ti "NoC, sel=90%" with lines ls 3



set xlabel 'generation'
set ylabel 'diversity p(1-p)'
set terminal png size 500,350

set output "graph_onemax1162139150/graph_onemax000_diversity.png"
set title 'OneMax (PopSize: 50)'
plot "graph_onemax1162139150/graph_onemax0_diversity.gnp" ti "NoC, sel=10%" with lines ls 1, "graph_onemax1162139150/graph_onemax1_diversity.gnp" ti "NoC, sel=50%" with lines ls 2, "graph_onemax1162139150/graph_onemax2_diversity.gnp" ti "NoC, sel=90%" with lines ls 3



