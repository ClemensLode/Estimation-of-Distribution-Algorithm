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
set style line 12 lt 12 lw 3
set style line 13 lt 13 lw 3
set style line 14 lt 14 lw 3
set style line 15 lt 1 lw 1
set style line 16 lt 2 lw 1
set style line 17 lt 3 lw 1
set style line 18 lt 4 lw 1
set style line 19 lt 5 lw 1
set style line 20 lt 6 lw 1
set style line 21 lt 7 lw 1
set style line 22 lt 8 lw 1
set style line 23 lt 9 lw 1
set style line 24 lt 10 lw 1
set style line 25 lt 11 lw 1
set style line 26 lt 12 lw 1
set style line 27 lt 13 lw 1
set style line 28 lt 14 lw 1

set xlabel 'generation'
set ylabel 'fitness'
set terminal png large size 750,500
set key right bottom
set output "graph_leading/graph_leading000_fitness.png"
set title 'Leading 1s (PopSize: 50)'
plot "graph_leading/graph_leading0_fitness.gnp" ti "No correction" with lines ls 1, "graph_leading/graph_leading1_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_leading/graph_leading2_fitness.gnp" ti "No correction + Exact distribution" with lines ls 3, "graph_leading/graph_leading3_fitness.gnp" ti "No correction + Exact distribution + bounded" with lines ls 4, "graph_leading/graph_leading4_fitness.gnp" ti "Exact distribution correction" with lines ls 5, "graph_leading/graph_leading5_fitness.gnp" ti "Exact distribution correction + bounded" with lines ls 6, "graph_leading/graph_leading6_fitness.gnp" ti "Exact distribution correction + Exact distribution" with lines ls 7, "graph_leading/graph_leading7_fitness.gnp" ti "Exact distribution correction + Exact distribution + bounded" with lines ls 8, "graph_leading/graph_leading8_fitness.gnp" ti "Laplace correction" with lines ls 9, "graph_leading/graph_leading9_fitness.gnp" ti "Laplace remember correction" with lines ls 10, "graph_leading/graph_leading10_fitness.gnp" ti "Laplace remember correction + bounded" with lines ls 11, "graph_leading/graph_leading11_fitness.gnp" ti "Corrected distribution" with lines ls 12, "graph_leading/graph_leading12_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 13



set xlabel 'generation'
set ylabel 'diversity p*(1-p)'
set terminal png large size 750,500

set output "graph_leading/graph_leading000_diversity.png"
set title 'Leading 1s (PopSize: 50)'
plot "graph_leading/graph_leading0_diversity.gnp" ti "No correction" with lines ls 1, "graph_leading/graph_leading1_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_leading/graph_leading2_diversity.gnp" ti "No correction + Exact distribution" with lines ls 3, "graph_leading/graph_leading3_diversity.gnp" ti "No correction + Exact distribution + bounded" with lines ls 4, "graph_leading/graph_leading4_diversity.gnp" ti "Exact distribution correction" with lines ls 5, "graph_leading/graph_leading5_diversity.gnp" ti "Exact distribution correction + bounded" with lines ls 6, "graph_leading/graph_leading6_diversity.gnp" ti "Exact distribution correction + Exact distribution" with lines ls 7, "graph_leading/graph_leading7_diversity.gnp" ti "Exact distribution correction + Exact distribution + bounded" with lines ls 8, "graph_leading/graph_leading8_diversity.gnp" ti "Laplace correction" with lines ls 9, "graph_leading/graph_leading9_diversity.gnp" ti "Laplace remember correction" with lines ls 10, "graph_leading/graph_leading10_diversity.gnp" ti "Laplace remember correction + bounded" with lines ls 11, "graph_leading/graph_leading11_diversity.gnp" ti "Corrected distribution" with lines ls 12, "graph_leading/graph_leading12_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 13, "graph_leading/graph_leading13_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 14



