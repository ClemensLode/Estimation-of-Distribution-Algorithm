set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 4 lw 3
set style line 5 lt 5 lw 3
set style line 6 lt 6 lw 3
set style line 7 lt 7 lw 3
set style line 8 lt 8 lw 3

set xlabel 'generation'
set ylabel 'fitness'
set terminal png size 500,350
set key right bottom
set output "graph_plateau1162151835/graph_plateau000_fitness.png"
set title 'Plateau function (PopSize: 10)'
plot "graph_plateau1162151835/graph_plateau0_fitness.gnp" ti "LC, a=0.01" with lines ls 1, "graph_plateau1162151835/graph_plateau1_fitness.gnp" ti "LC, a=0.02" with lines ls 2, "graph_plateau1162151835/graph_plateau2_fitness.gnp" ti "LC, a=0.03" with lines ls 3, "graph_plateau1162151835/graph_plateau3_fitness.gnp" ti "LC, a=0.04" with lines ls 4, "graph_plateau1162151835/graph_plateau4_fitness.gnp" ti "LC, a=0.05" with lines ls 5, "graph_plateau1162151835/graph_plateau5_fitness.gnp" ti "LC, a=0.06" with lines ls 6, "graph_plateau1162151835/graph_plateau6_fitness.gnp" ti "LC, a=0.07" with lines ls 7, "graph_plateau1162151835/graph_plateau7_fitness.gnp" ti "LC, a=0.08" with lines ls 8



set xlabel 'generation'
set ylabel 'diversity p(1-p)'
set terminal png size 500,350

set output "graph_plateau1162151835/graph_plateau000_diversity.png"
set title 'Plateau function (PopSize: 10)'
plot "graph_plateau1162151835/graph_plateau0_diversity.gnp" ti "LC, a=0.01" with lines ls 1, "graph_plateau1162151835/graph_plateau1_diversity.gnp" ti "LC, a=0.02" with lines ls 2, "graph_plateau1162151835/graph_plateau2_diversity.gnp" ti "LC, a=0.03" with lines ls 3, "graph_plateau1162151835/graph_plateau3_diversity.gnp" ti "LC, a=0.04" with lines ls 4, "graph_plateau1162151835/graph_plateau4_diversity.gnp" ti "LC, a=0.05" with lines ls 5, "graph_plateau1162151835/graph_plateau5_diversity.gnp" ti "LC, a=0.06" with lines ls 6, "graph_plateau1162151835/graph_plateau6_diversity.gnp" ti "LC, a=0.07" with lines ls 7, "graph_plateau1162151835/graph_plateau7_diversity.gnp" ti "LC, a=0.08" with lines ls 8



