set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3

set xlabel 'generation'
set ylabel 'fitness'
set terminal png size 500,350
set key right bottom
set output "graph_nk1163374019/graph_nk000_fitness.png"
plot "graph_nk1163374019/graph_nk0_fitness.gnp" ti "ED+BC, b=0.01" with lines ls 1, "graph_nk1163374019/graph_nk1_fitness.gnp" ti "EDC+BC, b=0.01" with lines ls 2, "graph_nk1163374019/graph_nk2_fitness.gnp" ti "EDC+LRC+BC, a=1, b=0.01" with lines ls 3



set xlabel 'generation'
set ylabel 'diversity'
set terminal png size 500,350

set output "graph_nk1163374019/graph_nk000_diversity.png"
plot "graph_nk1163374019/graph_nk0_diversity.gnp" ti "ED+BC, b=0.01" with lines ls 1, "graph_nk1163374019/graph_nk1_diversity.gnp" ti "EDC+BC, b=0.01" with lines ls 2, "graph_nk1163374019/graph_nk2_diversity.gnp" ti "EDC+LRC+BC, a=1, b=0.01" with lines ls 3



