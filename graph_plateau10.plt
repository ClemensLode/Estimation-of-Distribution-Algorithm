set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 4 lw 3
set style line 5 lt 5 lw 3

set xlabel 'generation'
set ylabel 'fitness'
set terminal png large size 750,500
set key right bottom
set output "graph_plateau/graph_plateau000_fitness.png"
set title 'Plateau function (PopSize: 10)'
plot "graph_plateau/graph_plateau0_fitness.gnp" ti "No correction" with lines ls 1, "graph_plateau/graph_plateau1_fitness.gnp" ti "No correction + Exact distribution" with lines ls 2, "graph_plateau/graph_plateau2_fitness.gnp" ti "Exact distribution correction + Exact distribution" with lines ls 3, "graph_plateau/graph_plateau3_fitness.gnp" ti "Laplace remember correction + Exact distribution" with lines ls 4, "graph_plateau/graph_plateau4_fitness.gnp" ti "Corrected distribution" with lines ls 5

set output "graph_plateau/graph_plateau001_fitness.png"
set title 'Plateau function (PopSize: 50)'
plot "graph_plateau/graph_plateau5_fitness.gnp" ti "No correction" with lines ls 1, "graph_plateau/graph_plateau6_fitness.gnp" ti "No correction + Exact distribution" with lines ls 2, "graph_plateau/graph_plateau7_fitness.gnp" ti "Exact distribution correction + Exact distribution" with lines ls 3, "graph_plateau/graph_plateau8_fitness.gnp" ti "Laplace remember correction + Exact distribution" with lines ls 4, "graph_plateau/graph_plateau9_fitness.gnp" ti "Corrected distribution" with lines ls 5



set xlabel 'generation'
set ylabel 'diversity p*(1-p)'
set terminal png large size 750,500

set output "graph_plateau/graph_plateau000_diversity.png"
set title 'Plateau function (PopSize: 10)'
plot "graph_plateau/graph_plateau0_diversity.gnp" ti "No correction" with lines ls 1, "graph_plateau/graph_plateau1_diversity.gnp" ti "No correction + Exact distribution" with lines ls 2, "graph_plateau/graph_plateau2_diversity.gnp" ti "Exact distribution correction + Exact distribution" with lines ls 3, "graph_plateau/graph_plateau3_diversity.gnp" ti "Laplace remember correction + Exact distribution" with lines ls 4, "graph_plateau/graph_plateau4_diversity.gnp" ti "Corrected distribution" with lines ls 5

set output "graph_plateau/graph_plateau001_diversity.png"
set title 'Plateau function (PopSize: 50)'
plot "graph_plateau/graph_plateau5_diversity.gnp" ti "No correction" with lines ls 1, "graph_plateau/graph_plateau6_diversity.gnp" ti "No correction + Exact distribution" with lines ls 2, "graph_plateau/graph_plateau7_diversity.gnp" ti "Exact distribution correction + Exact distribution" with lines ls 3, "graph_plateau/graph_plateau8_diversity.gnp" ti "Laplace remember correction + Exact distribution" with lines ls 4, "graph_plateau/graph_plateau9_diversity.gnp" ti "Corrected distribution" with lines ls 5



