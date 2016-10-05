set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 4 lw 3
set style line 5 lt 5 lw 3

set xlabel 'generation'
set ylabel 'diversity p*(1-p)'
set terminal png large size 750,500

set output "graph_flat/graph_flat000_diversity.png"
set title 'Flat fitness landscape (PopSize: 10)'
plot "graph_flat/graph_flat0_diversity.gnp" ti "No correction" with lines ls 1, "graph_flat/graph_flat1_diversity.gnp" ti "No correction + Exact distribution" with lines ls 2, "graph_flat/graph_flat2_diversity.gnp" ti "Exact distribution correction + Exact distribution" with lines ls 3, "graph_flat/graph_flat3_diversity.gnp" ti "Laplace remember correction + Exact distribution" with lines ls 4, "graph_flat/graph_flat4_diversity.gnp" ti "Corrected distribution" with lines ls 5



