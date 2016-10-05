set xlabel 'generation'
set ylabel 'fitness'
set terminal png large size 750,500
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

set output "graph_onemax_two/graph_onemax_two000_fitness.png"
set title 'OneMax Two Peaks (PopSize: 100)'
plot "graph_onemax_two/graph_onemax_two0_fitness.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two1_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two2_fitness.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax_two/graph_onemax_two3_fitness.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax_two/graph_onemax_two4_fitness.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax_two/graph_onemax_two5_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax_two/graph_onemax_two6_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 7

set output "graph_onemax_two/graph_onemax_two001_fitness.png"
set title 'OneMax Two Peaks (Exact Random Distribution, PopSize: 100)'
plot "graph_onemax_two/graph_onemax_two8_fitness.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two9_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two10_fitness.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax_two/graph_onemax_two11_fitness.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax_two/graph_onemax_two12_fitness.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax_two/graph_onemax_two13_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax_two/graph_onemax_two14_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 7



set xlabel 'generation'
set ylabel 'diversity p*(1-p)'
set terminal png large size 750,500

set output "graph_onemax_two/graph_onemax_two000_diversity.png"
set title 'OneMax Two Peaks (PopSize: 100)'
plot "graph_onemax_two/graph_onemax_two0_diversity.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two1_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two2_diversity.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax_two/graph_onemax_two3_diversity.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax_two/graph_onemax_two4_diversity.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax_two/graph_onemax_two5_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax_two/graph_onemax_two6_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_onemax_two/graph_onemax_two7_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 8

set output "graph_onemax_two/graph_onemax_two001_diversity.png"
set title 'OneMax Two Peaks (Exact Random Distribution, PopSize: 100)'
plot "graph_onemax_two/graph_onemax_two8_diversity.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two9_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two10_diversity.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax_two/graph_onemax_two11_diversity.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax_two/graph_onemax_two12_diversity.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax_two/graph_onemax_two13_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax_two/graph_onemax_two14_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_onemax_two/graph_onemax_two15_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 8



