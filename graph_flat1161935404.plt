set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 4 lw 3
set style line 5 lt 5 lw 3

set xlabel 'generation'
set ylabel 'diversity p(1-p)'
set terminal png size 500,350

set output "graph_flat1161935404/graph_flat000_diversity.png"
set title 'Flat fitness landscape (PopSize: 10)'
plot "graph_flat1161935404/graph_flat0_diversity.gnp" ti "NoC" with lines ls 1, "graph_flat1161935404/graph_flat1_diversity.gnp" ti "NoC+bd, b=0.045" with lines ls 2, "graph_flat1161935404/graph_flat2_diversity.gnp" ti "EDC+ERD+bd, b=0.045" with lines ls 3, "graph_flat1161935404/graph_flat3_diversity.gnp" ti "LC, a=0.5" with lines ls 4, "graph_flat1161935404/graph_flat4_diversity.gnp" ti "CD+bd, b=0.045" with lines ls 5



