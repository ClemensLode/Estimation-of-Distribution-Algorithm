set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3

set xlabel 'generation'
set ylabel 'fitness'
set terminal png size 500,350
set key right bottom
set output "graph_onemax1163186023/graph_onemax000_fitness.png"
plot "graph_onemax1163186023/graph_onemax0_fitness.gnp" ti "RD+NoC" with lines ls 1, "graph_onemax1163186023/graph_onemax1_fitness.gnp" ti "ED+NoC" with lines ls 2



set xlabel 'generation'
set ylabel 'diversity'
set terminal png size 500,350

set output "graph_onemax1163186023/graph_onemax000_diversity.png"
plot "graph_onemax1163186023/graph_onemax0_diversity.gnp" ti "RD+NoC" with lines ls 1, "graph_onemax1163186023/graph_onemax1_diversity.gnp" ti "ED+NoC" with lines ls 2



