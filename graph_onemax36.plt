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
set style line 15 lt 15 lw 3
set style line 16 lt 16 lw 3
set style line 17 lt 17 lw 3
set style line 18 lt 18 lw 3
set style line 19 lt 1 lw 1
set style line 20 lt 2 lw 1
set style line 21 lt 3 lw 1
set style line 22 lt 4 lw 1
set style line 23 lt 5 lw 1
set style line 24 lt 6 lw 1
set style line 25 lt 7 lw 1
set style line 26 lt 8 lw 1
set style line 27 lt 9 lw 1
set style line 28 lt 10 lw 1
set style line 29 lt 11 lw 1
set style line 30 lt 12 lw 1
set style line 31 lt 13 lw 1
set style line 32 lt 14 lw 1
set style line 33 lt 15 lw 1
set style line 34 lt 16 lw 1
set style line 35 lt 17 lw 1
set style line 36 lt 18 lw 1

set xlabel 'generation'
set ylabel 'fitness'
set terminal png large size 750,500
set key right bottom
set output "graph_onemax/graph_onemax000_fitness.png"
set title 'OneMax (PopSize: 10)'
plot "graph_onemax/graph_onemax0_fitness.gnp" ti "No correction" with lines ls 1, "graph_onemax/graph_onemax1_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax/graph_onemax2_fitness.gnp" ti "No correction + Exact distribution" with lines ls 3, "graph_onemax/graph_onemax3_fitness.gnp" ti "No correction + Exact distribution + bounded" with lines ls 4, "graph_onemax/graph_onemax4_fitness.gnp" ti "Exact distribution correction" with lines ls 5, "graph_onemax/graph_onemax5_fitness.gnp" ti "Exact distribution correction + bounded" with lines ls 6, "graph_onemax/graph_onemax6_fitness.gnp" ti "Exact distribution correction + Exact distribution" with lines ls 7, "graph_onemax/graph_onemax7_fitness.gnp" ti "Exact distribution correction + Exact distribution + bounded" with lines ls 8, "graph_onemax/graph_onemax8_fitness.gnp" ti "Laplace correction" with lines ls 9, "graph_onemax/graph_onemax9_fitness.gnp" ti "Laplace correction + Exact distribution" with lines ls 10, "graph_onemax/graph_onemax10_fitness.gnp" ti "Laplace remember correction" with lines ls 11, "graph_onemax/graph_onemax11_fitness.gnp" ti "Laplace remember correction + bounded" with lines ls 12, "graph_onemax/graph_onemax12_fitness.gnp" ti "Laplace remember correction + Exact distribution" with lines ls 13, "graph_onemax/graph_onemax13_fitness.gnp" ti "Laplace remember correction + Exact distribution + bounded" with lines ls 14, "graph_onemax/graph_onemax14_fitness.gnp" ti "Corrected distribution" with lines ls 15, "graph_onemax/graph_onemax15_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 16, "graph_onemax/graph_onemax16_fitness.gnp" ti "Corrected distribution + Exact distribution" with lines ls 17, "graph_onemax/graph_onemax17_fitness.gnp" ti "Corrected distribution + bounded + Exact distribution" with lines ls 18

set output "graph_onemax/graph_onemax001_fitness.png"
set title 'OneMax (PopSize: 50)'
plot "graph_onemax/graph_onemax18_fitness.gnp" ti "No correction" with lines ls 1, "graph_onemax/graph_onemax19_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax/graph_onemax20_fitness.gnp" ti "No correction + Exact distribution" with lines ls 3, "graph_onemax/graph_onemax21_fitness.gnp" ti "No correction + Exact distribution + bounded" with lines ls 4, "graph_onemax/graph_onemax22_fitness.gnp" ti "Exact distribution correction" with lines ls 5, "graph_onemax/graph_onemax23_fitness.gnp" ti "Exact distribution correction + bounded" with lines ls 6, "graph_onemax/graph_onemax24_fitness.gnp" ti "Exact distribution correction + Exact distribution" with lines ls 7, "graph_onemax/graph_onemax25_fitness.gnp" ti "Exact distribution correction + Exact distribution + bounded" with lines ls 8, "graph_onemax/graph_onemax26_fitness.gnp" ti "Laplace correction" with lines ls 9, "graph_onemax/graph_onemax27_fitness.gnp" ti "Laplace correction + Exact distribution" with lines ls 10, "graph_onemax/graph_onemax28_fitness.gnp" ti "Laplace remember correction" with lines ls 11, "graph_onemax/graph_onemax29_fitness.gnp" ti "Laplace remember correction + bounded" with lines ls 12, "graph_onemax/graph_onemax30_fitness.gnp" ti "Laplace remember correction + Exact distribution" with lines ls 13, "graph_onemax/graph_onemax31_fitness.gnp" ti "Laplace remember correction + Exact distribution + bounded" with lines ls 14, "graph_onemax/graph_onemax32_fitness.gnp" ti "Corrected distribution" with lines ls 15, "graph_onemax/graph_onemax33_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 16, "graph_onemax/graph_onemax34_fitness.gnp" ti "Corrected distribution + Exact distribution" with lines ls 17, "graph_onemax/graph_onemax35_fitness.gnp" ti "Corrected distribution + bounded + Exact distribution" with lines ls 18



set xlabel 'generation'
set ylabel 'diversity p*(1-p)'
set terminal png large size 750,500

set output "graph_onemax/graph_onemax000_diversity.png"
set title 'OneMax (PopSize: 10)'
plot "graph_onemax/graph_onemax0_diversity.gnp" ti "No correction" with lines ls 1, "graph_onemax/graph_onemax1_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax/graph_onemax2_diversity.gnp" ti "No correction + Exact distribution" with lines ls 3, "graph_onemax/graph_onemax3_diversity.gnp" ti "No correction + Exact distribution + bounded" with lines ls 4, "graph_onemax/graph_onemax4_diversity.gnp" ti "Exact distribution correction" with lines ls 5, "graph_onemax/graph_onemax5_diversity.gnp" ti "Exact distribution correction + bounded" with lines ls 6, "graph_onemax/graph_onemax6_diversity.gnp" ti "Exact distribution correction + Exact distribution" with lines ls 7, "graph_onemax/graph_onemax7_diversity.gnp" ti "Exact distribution correction + Exact distribution + bounded" with lines ls 8, "graph_onemax/graph_onemax8_diversity.gnp" ti "Laplace correction" with lines ls 9, "graph_onemax/graph_onemax9_diversity.gnp" ti "Laplace correction + Exact distribution" with lines ls 10, "graph_onemax/graph_onemax10_diversity.gnp" ti "Laplace remember correction" with lines ls 11, "graph_onemax/graph_onemax11_diversity.gnp" ti "Laplace remember correction + bounded" with lines ls 12, "graph_onemax/graph_onemax12_diversity.gnp" ti "Laplace remember correction + Exact distribution" with lines ls 13, "graph_onemax/graph_onemax13_diversity.gnp" ti "Laplace remember correction + Exact distribution + bounded" with lines ls 14, "graph_onemax/graph_onemax14_diversity.gnp" ti "Corrected distribution" with lines ls 15, "graph_onemax/graph_onemax15_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 16, "graph_onemax/graph_onemax16_diversity.gnp" ti "Corrected distribution + Exact distribution" with lines ls 17, "graph_onemax/graph_onemax17_diversity.gnp" ti "Corrected distribution + bounded + Exact distribution" with lines ls 18

set output "graph_onemax/graph_onemax001_diversity.png"
set title 'OneMax (PopSize: 50)'
plot "graph_onemax/graph_onemax18_diversity.gnp" ti "No correction" with lines ls 1, "graph_onemax/graph_onemax19_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax/graph_onemax20_diversity.gnp" ti "No correction + Exact distribution" with lines ls 3, "graph_onemax/graph_onemax21_diversity.gnp" ti "No correction + Exact distribution + bounded" with lines ls 4, "graph_onemax/graph_onemax22_diversity.gnp" ti "Exact distribution correction" with lines ls 5, "graph_onemax/graph_onemax23_diversity.gnp" ti "Exact distribution correction + bounded" with lines ls 6, "graph_onemax/graph_onemax24_diversity.gnp" ti "Exact distribution correction + Exact distribution" with lines ls 7, "graph_onemax/graph_onemax25_diversity.gnp" ti "Exact distribution correction + Exact distribution + bounded" with lines ls 8, "graph_onemax/graph_onemax26_diversity.gnp" ti "Laplace correction" with lines ls 9, "graph_onemax/graph_onemax27_diversity.gnp" ti "Laplace correction + Exact distribution" with lines ls 10, "graph_onemax/graph_onemax28_diversity.gnp" ti "Laplace remember correction" with lines ls 11, "graph_onemax/graph_onemax29_diversity.gnp" ti "Laplace remember correction + bounded" with lines ls 12, "graph_onemax/graph_onemax30_diversity.gnp" ti "Laplace remember correction + Exact distribution" with lines ls 13, "graph_onemax/graph_onemax31_diversity.gnp" ti "Laplace remember correction + Exact distribution + bounded" with lines ls 14, "graph_onemax/graph_onemax32_diversity.gnp" ti "Corrected distribution" with lines ls 15, "graph_onemax/graph_onemax33_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 16, "graph_onemax/graph_onemax34_diversity.gnp" ti "Corrected distribution + Exact distribution" with lines ls 17, "graph_onemax/graph_onemax35_diversity.gnp" ti "Corrected distribution + bounded + Exact distribution" with lines ls 18



