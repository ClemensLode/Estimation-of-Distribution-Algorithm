set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 4 lw 3
set style line 5 lt 5 lw 3
set style line 6 lt 6 lw 3
set style line 7 lt 7 lw 3

set xlabel 'generation'
set ylabel 'diversity p(1-p)'
set terminal png size 500,350

set output "graph_flat1162061498/graph_flat000_diversity.png"
set title 'Flat fitness landscape (PopSize: 50)'
plot "graph_flat1162061498/graph_flat0_diversity.gnp" ti "NoC" with lines ls 1, "graph_flat1162061498/graph_flat1_diversity.gnp" ti "NoC+bd, b=0.004" with lines ls 2, "graph_flat1162061498/graph_flat2_diversity.gnp" ti "NoC+ERD+bd, b=0.004" with lines ls 3, "graph_flat1162061498/graph_flat3_diversity.gnp" ti "EDC+ERD" with lines ls 4, "graph_flat1162061498/graph_flat4_diversity.gnp" ti "EDC+ERD+bd, b=0.004" with lines ls 5, "graph_flat1162061498/graph_flat5_diversity.gnp" ti "LC, a=0.1" with lines ls 6, "graph_flat1162061498/graph_flat6_diversity.gnp" ti "CD+bd, b=0.004" with lines ls 7



