set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 4 lw 3
set style line 5 lt 5 lw 3
set style line 6 lt 6 lw 3
set style line 7 lt 7 lw 3
set style line 8 lt 8 lw 3
set style line 9 lt 9 lw 3

set xlabel 'generation'
set ylabel 'fitness'
set terminal png size 500,350
set key right bottom
set output "graph_nk1163219183/graph_nk000_fitness.png"
plot "graph_nk1163219183/graph_nk0_fitness.gnp" ti "ED+LRC+BC, a=0.307692, b=0.02" with lines ls 1, "graph_nk1163219183/graph_nk1_fitness.gnp" ti "ED+LRC+BC, a=0.341684, b=0.02" with lines ls 2, "graph_nk1163219183/graph_nk2_fitness.gnp" ti "ED+LRC+BC, a=0.375676, b=0.02" with lines ls 3, "graph_nk1163219183/graph_nk3_fitness.gnp" ti "ED+LRC+BC, a=0.409668, b=0.02" with lines ls 4, "graph_nk1163219183/graph_nk4_fitness.gnp" ti "ED+LRC+BC, a=0.443659, b=0.02" with lines ls 5, "graph_nk1163219183/graph_nk5_fitness.gnp" ti "ED+LRC+BC, a=0.477651, b=0.02" with lines ls 6, "graph_nk1163219183/graph_nk6_fitness.gnp" ti "ED+LRC+BC, a=0.511643, b=0.02" with lines ls 7, "graph_nk1163219183/graph_nk7_fitness.gnp" ti "ED+LRC+BC, a=0.545635, b=0.02" with lines ls 8, "graph_nk1163219183/graph_nk8_fitness.gnp" ti "EDC+BC, b=0.02" with lines ls 9



set xlabel 'generation'
set ylabel 'diversity'
set terminal png size 500,350

set output "graph_nk1163219183/graph_nk000_diversity.png"
plot "graph_nk1163219183/graph_nk0_diversity.gnp" ti "ED+LRC+BC, a=0.307692, b=0.02" with lines ls 1, "graph_nk1163219183/graph_nk1_diversity.gnp" ti "ED+LRC+BC, a=0.341684, b=0.02" with lines ls 2, "graph_nk1163219183/graph_nk2_diversity.gnp" ti "ED+LRC+BC, a=0.375676, b=0.02" with lines ls 3, "graph_nk1163219183/graph_nk3_diversity.gnp" ti "ED+LRC+BC, a=0.409668, b=0.02" with lines ls 4, "graph_nk1163219183/graph_nk4_diversity.gnp" ti "ED+LRC+BC, a=0.443659, b=0.02" with lines ls 5, "graph_nk1163219183/graph_nk5_diversity.gnp" ti "ED+LRC+BC, a=0.477651, b=0.02" with lines ls 6, "graph_nk1163219183/graph_nk6_diversity.gnp" ti "ED+LRC+BC, a=0.511643, b=0.02" with lines ls 7, "graph_nk1163219183/graph_nk7_diversity.gnp" ti "ED+LRC+BC, a=0.545635, b=0.02" with lines ls 8, "graph_nk1163219183/graph_nk8_diversity.gnp" ti "EDC+BC, b=0.02" with lines ls 9



