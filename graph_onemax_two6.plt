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
set output "graph_onemax_two/graph_onemax_two000_fitness.png"
set title 'OneMax Two Peaks (PopSize: 10)'
plot "graph_onemax_two/graph_onemax_two0_fitness.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two1_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two2_fitness.gnp" ti "Corrected distribution" with lines ls 3

set output "graph_onemax_two/graph_onemax_two001_fitness.png"
set title 'OneMax Two Peaks (PopSize: 50)'
plot "graph_onemax_two/graph_onemax_two3_fitness.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two4_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two5_fitness.gnp" ti "Corrected distribution" with lines ls 3



set xlabel 'generation'
set ylabel 'diversity p*(1-p)'
set terminal png large size 750,500

set output "graph_onemax_two/graph_onemax_two000_diversity.png"
set title 'OneMax Two Peaks (PopSize: 10)'
plot "graph_onemax_two/graph_onemax_two0_diversity.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two1_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two2_diversity.gnp" ti "Corrected distribution" with lines ls 3

set output "graph_onemax_two/graph_onemax_two001_diversity.png"
set title 'OneMax Two Peaks (PopSize: 50)'
plot "graph_onemax_two/graph_onemax_two3_diversity.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two4_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two5_diversity.gnp" ti "Corrected distribution" with lines ls 3



