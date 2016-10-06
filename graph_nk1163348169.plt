set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3

set xlabel 'generation'
set ylabel 'fitness'
set terminal png size 500,350
set key right bottom
set output "graph_nk1163348169/graph_nk000_fitness.png"
plot "graph_nk1163348169/graph_nk0_fitness.gnp" ti "ED+BC, b=0.019" with lines ls 1, "graph_nk1163348169/graph_nk1_fitness.gnp" ti "ED+LC, a=0.1" with lines ls 2

set output "graph_nk1163348169/graph_nk001_fitness.png"
plot "graph_nk1163348169/graph_nk2_fitness.gnp" ti "ED+BC, b=0.019" with lines ls 1, "graph_nk1163348169/graph_nk3_fitness.gnp" ti "ED+LC, a=0.1" with lines ls 2



set xlabel 'generation'
set ylabel 'diversity'
set terminal png size 500,350

set output "graph_nk1163348169/graph_nk000_diversity.png"
plot "graph_nk1163348169/graph_nk0_diversity.gnp" ti "ED+BC, b=0.019" with lines ls 1, "graph_nk1163348169/graph_nk1_diversity.gnp" ti "ED+LC, a=0.1" with lines ls 2

set output "graph_nk1163348169/graph_nk001_diversity.png"
plot "graph_nk1163348169/graph_nk2_diversity.gnp" ti "ED+BC, b=0.019" with lines ls 1, "graph_nk1163348169/graph_nk3_diversity.gnp" ti "ED+LC, a=0.1" with lines ls 2



