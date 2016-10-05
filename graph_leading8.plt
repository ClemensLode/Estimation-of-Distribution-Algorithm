set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 4 lw 3
set style line 5 lt 5 lw 3
set style line 6 lt 6 lw 3
set style line 7 lt 7 lw 3
set style line 8 lt 8 lw 3
set style line 9 lt 1 lw 1
set style line 10 lt 2 lw 1
set style line 11 lt 3 lw 1
set style line 12 lt 4 lw 1
set style line 13 lt 5 lw 1
set style line 14 lt 6 lw 1
set style line 15 lt 7 lw 1
set style line 16 lt 8 lw 1

set xlabel 'generation'
set ylabel 'fitness'
set terminal png large size 750,500
set key right bottom
set output "graph_leading/graph_leading000_fitness.png"
set title 'Leading 1s (PopSize: 50)'
plot "graph_leading/graph_leading0_fitness.gnp" ti "No correction + Exact distribution" with lines ls 1, "graph_leading/graph_leading1_fitness.gnp" ti "Exact distribution correction" with lines ls 2, "graph_leading/graph_leading2_fitness.gnp" ti "Exact distribution correction + Exact distribution" with lines ls 3, "graph_leading/graph_leading3_fitness.gnp" ti "Laplace correction + Exact distribution" with lines ls 4, "graph_leading/graph_leading4_fitness.gnp" ti "Laplace remember correction" with lines ls 5, "graph_leading/graph_leading5_fitness.gnp" ti "Laplace remember correction + Exact distribution" with lines ls 6, "graph_leading/graph_leading6_fitness.gnp" ti "Corrected distribution" with lines ls 7, "graph_leading/graph_leading7_fitness.gnp" ti "Corrected distribution + Exact distribution" with lines ls 8



set xlabel 'generation'
set ylabel 'diversity p*(1-p)'
set terminal png large size 750,500

set output "graph_leading/graph_leading000_diversity.png"
set title 'Leading 1s (PopSize: 50)'
plot "graph_leading/graph_leading0_diversity.gnp" ti "No correction + Exact distribution" with lines ls 1, "graph_leading/graph_leading1_diversity.gnp" ti "Exact distribution correction" with lines ls 2, "graph_leading/graph_leading2_diversity.gnp" ti "Exact distribution correction + Exact distribution" with lines ls 3, "graph_leading/graph_leading3_diversity.gnp" ti "Laplace correction + Exact distribution" with lines ls 4, "graph_leading/graph_leading4_diversity.gnp" ti "Laplace remember correction" with lines ls 5, "graph_leading/graph_leading5_diversity.gnp" ti "Laplace remember correction + Exact distribution" with lines ls 6, "graph_leading/graph_leading6_diversity.gnp" ti "Corrected distribution" with lines ls 7, "graph_leading/graph_leading7_diversity.gnp" ti "Corrected distribution + Exact distribution" with lines ls 8



