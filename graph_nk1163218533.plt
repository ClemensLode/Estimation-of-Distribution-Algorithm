set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 4 lw 3
set style line 5 lt 5 lw 3
set style line 6 lt 6 lw 3
set style line 7 lt 7 lw 3
set style line 8 lt 8 lw 3
set style line 9 lt 9 lw 3
set style line 10 lt 10 lw 3
set style line 11 lt 11 lw 3

set xlabel 'generation'
set ylabel 'fitness'
set terminal png size 500,350
set key right bottom
set output "graph_nk1163218533/graph_nk000_fitness.png"
plot "graph_nk1163218533/graph_nk0_fitness.gnp" ti "ED+BC, b=0.02" with lines ls 1, "graph_nk1163218533/graph_nk1_fitness.gnp" ti "ED+LRC+BC, a=0.5, b=0.02" with lines ls 2, "graph_nk1163218533/graph_nk2_fitness.gnp" ti "ED+LRC+BC, a=0.8125, b=0.02" with lines ls 3, "graph_nk1163218533/graph_nk3_fitness.gnp" ti "ED+LRC+BC, a=1.125, b=0.02" with lines ls 4, "graph_nk1163218533/graph_nk4_fitness.gnp" ti "ED+LRC+BC, a=1.4375, b=0.02" with lines ls 5, "graph_nk1163218533/graph_nk5_fitness.gnp" ti "ED+LRC+BC, a=1.75, b=0.02" with lines ls 6, "graph_nk1163218533/graph_nk6_fitness.gnp" ti "ED+LRC+BC, a=2.0625, b=0.02" with lines ls 7, "graph_nk1163218533/graph_nk7_fitness.gnp" ti "ED+LRC+BC, a=2.375, b=0.02" with lines ls 8, "graph_nk1163218533/graph_nk8_fitness.gnp" ti "ED+LRC+BC, a=2.6875, b=0.02" with lines ls 9, "graph_nk1163218533/graph_nk9_fitness.gnp" ti "ED+LRC+BC, a=3, b=0.02" with lines ls 10, "graph_nk1163218533/graph_nk10_fitness.gnp" ti "EDC+BC, b=0.02" with lines ls 11



set xlabel 'generation'
set ylabel 'diversity'
set terminal png size 500,350

set output "graph_nk1163218533/graph_nk000_diversity.png"
plot "graph_nk1163218533/graph_nk0_diversity.gnp" ti "ED+BC, b=0.02" with lines ls 1, "graph_nk1163218533/graph_nk1_diversity.gnp" ti "ED+LRC+BC, a=0.5, b=0.02" with lines ls 2, "graph_nk1163218533/graph_nk2_diversity.gnp" ti "ED+LRC+BC, a=0.8125, b=0.02" with lines ls 3, "graph_nk1163218533/graph_nk3_diversity.gnp" ti "ED+LRC+BC, a=1.125, b=0.02" with lines ls 4, "graph_nk1163218533/graph_nk4_diversity.gnp" ti "ED+LRC+BC, a=1.4375, b=0.02" with lines ls 5, "graph_nk1163218533/graph_nk5_diversity.gnp" ti "ED+LRC+BC, a=1.75, b=0.02" with lines ls 6, "graph_nk1163218533/graph_nk6_diversity.gnp" ti "ED+LRC+BC, a=2.0625, b=0.02" with lines ls 7, "graph_nk1163218533/graph_nk7_diversity.gnp" ti "ED+LRC+BC, a=2.375, b=0.02" with lines ls 8, "graph_nk1163218533/graph_nk8_diversity.gnp" ti "ED+LRC+BC, a=2.6875, b=0.02" with lines ls 9, "graph_nk1163218533/graph_nk9_diversity.gnp" ti "ED+LRC+BC, a=3, b=0.02" with lines ls 10, "graph_nk1163218533/graph_nk10_diversity.gnp" ti "EDC+BC, b=0.02" with lines ls 11



