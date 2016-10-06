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

set xlabel 'generation'
set ylabel 'diversity'
set terminal png size 500,350

set output "graph_flat1163219895/graph_flat000_diversity.png"
plot "graph_flat1163219895/graph_flat0_diversity.gnp" ti "ED+LRC+BC, a=0.2, b=0.02" with lines ls 1, "graph_flat1163219895/graph_flat1_diversity.gnp" ti "ED+LRC+BC, a=0.225, b=0.02" with lines ls 2, "graph_flat1163219895/graph_flat2_diversity.gnp" ti "ED+LRC+BC, a=0.25, b=0.02" with lines ls 3, "graph_flat1163219895/graph_flat3_diversity.gnp" ti "ED+LRC+BC, a=0.275, b=0.02" with lines ls 4, "graph_flat1163219895/graph_flat4_diversity.gnp" ti "ED+LRC+BC, a=0.3, b=0.02" with lines ls 5, "graph_flat1163219895/graph_flat5_diversity.gnp" ti "ED+LRC+BC, a=0.325, b=0.02" with lines ls 6, "graph_flat1163219895/graph_flat6_diversity.gnp" ti "ED+LRC+BC, a=0.35, b=0.02" with lines ls 7, "graph_flat1163219895/graph_flat7_diversity.gnp" ti "ED+LRC+BC, a=0.375, b=0.02" with lines ls 8, "graph_flat1163219895/graph_flat8_diversity.gnp" ti "ED+LRC+BC, a=0.4, b=0.02" with lines ls 9, "graph_flat1163219895/graph_flat9_diversity.gnp" ti "EDC+BC, b=0.02" with lines ls 10



