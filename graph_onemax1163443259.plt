set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 4 lw 3

set xlabel 'generation'
set ylabel 'fitness'
set terminal png size 500,350
set key right bottom
set output "graph_onemax1163443259/graph_onemax000_fitness.png"
plot "graph_onemax1163443259/graph_onemax0_fitness.gnp" ti "ED+BC, b=0.01" with lines ls 1, "graph_onemax1163443259/graph_onemax1_fitness.gnp" ti "ED+LRC+BC, a=1, b=0.01" with lines ls 2, "graph_onemax1163443259/graph_onemax2_fitness.gnp" ti "EDC+BC, b=0.01" with lines ls 3, "graph_onemax1163443259/graph_onemax3_fitness.gnp" ti "EDC+LRC+BC, a=1, b=0.01" with lines ls 4



set xlabel 'generation'
set ylabel 'diversity'
set terminal png size 500,350

set output "graph_onemax1163443259/graph_onemax000_diversity.png"
plot "graph_onemax1163443259/graph_onemax0_diversity.gnp" ti "ED+BC, b=0.01" with lines ls 1, "graph_onemax1163443259/graph_onemax1_diversity.gnp" ti "ED+LRC+BC, a=1, b=0.01" with lines ls 2, "graph_onemax1163443259/graph_onemax2_diversity.gnp" ti "EDC+BC, b=0.01" with lines ls 3, "graph_onemax1163443259/graph_onemax3_diversity.gnp" ti "EDC+LRC+BC, a=1, b=0.01" with lines ls 4



