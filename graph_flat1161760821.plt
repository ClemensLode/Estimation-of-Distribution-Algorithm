set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3

set xlabel 'generation'
set ylabel 'diversity p(1-p)'
set terminal png size 500,350

set output "graph_flat1161760821/graph_flat000_diversity.png"
set title 'Flat fitness landscape (PopSize: 50)'
plot "graph_flat1161760821/graph_flat0_diversity.gnp" ti "NoC" with lines ls 1, "graph_flat1161760821/graph_flat1_diversity.gnp" ti "NoC+ERD" with lines ls 2



