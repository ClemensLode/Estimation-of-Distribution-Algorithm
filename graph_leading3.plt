set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 1 lw 1
set style line 5 lt 2 lw 1
set style line 6 lt 3 lw 1

set xlabel 'generation'
set ylabel 'fitness'
set terminal png large size 750,500
set key right bottom
set output "graph_leading/graph_leading000_fitness.png"
set title 'Leading 1s (PopSize: 50)'
plot "graph_leading/graph_leading0_fitness.gnp" ti "No correction + Exact distribution" with lines ls 1, "graph_leading/graph_leading1_fitness.gnp" ti "Exact distribution correction + Exact distribution" with lines ls 2, "graph_leading/graph_leading2_fitness.gnp" ti "Laplace remember correction" with lines ls 3



set xlabel 'generation'
set ylabel 'diversity p*(1-p)'
set terminal png large size 750,500

set output "graph_leading/graph_leading000_diversity.png"
set title 'Leading 1s (PopSize: 50)'
plot "graph_leading/graph_leading0_diversity.gnp" ti "No correction + Exact distribution" with lines ls 1, "graph_leading/graph_leading1_diversity.gnp" ti "Exact distribution correction + Exact distribution" with lines ls 2, "graph_leading/graph_leading2_diversity.gnp" ti "Laplace remember correction" with lines ls 3



