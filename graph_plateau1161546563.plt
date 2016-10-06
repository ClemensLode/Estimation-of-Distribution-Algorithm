set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3

set xlabel 'generation'
set ylabel 'fitness'
set terminal png size 500,350
set key right bottom
set output "graph_plateau1161546563/graph_plateau000_fitness.png"
set title 'Plateau function (PopSize: 50)'
plot "graph_plateau1161546563/graph_plateau0_fitness.gnp" ti "NoC+bd, b=0" with lines ls 1, "graph_plateau1161546563/graph_plateau1_fitness.gnp" ti "NoC+bd, b=0.0025" with lines ls 2, "graph_plateau1161546563/graph_plateau2_fitness.gnp" ti "NoC+bd, b=0.005" with lines ls 3



set xlabel 'generation'
set ylabel 'diversity p(1-p)'
set terminal png size 500,350

set output "graph_plateau1161546563/graph_plateau000_diversity.png"
set title 'Plateau function (PopSize: 50)'
plot "graph_plateau1161546563/graph_plateau0_diversity.gnp" ti "NoC+bd, b=0" with lines ls 1, "graph_plateau1161546563/graph_plateau1_diversity.gnp" ti "NoC+bd, b=0.0025" with lines ls 2, "graph_plateau1161546563/graph_plateau2_diversity.gnp" ti "NoC+bd, b=0.005" with lines ls 3



