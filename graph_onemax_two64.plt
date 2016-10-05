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
set title 'OneMax Two Peaks (PopSize: 10)'
plot "graph_onemax_two/graph_onemax_two0_fitness.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two1_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two2_fitness.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax_two/graph_onemax_two3_fitness.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax_two/graph_onemax_two4_fitness.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax_two/graph_onemax_two5_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax_two/graph_onemax_two6_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 7

set output "graph_onemax_two/graph_onemax_two001_fitness.png"
set title 'OneMax Two Peaks (Exact Random Distribution, PopSize: 10)'
plot "graph_onemax_two/graph_onemax_two8_fitness.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two9_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two10_fitness.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax_two/graph_onemax_two11_fitness.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax_two/graph_onemax_two12_fitness.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax_two/graph_onemax_two13_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax_two/graph_onemax_two14_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 7

set output "graph_onemax_two/graph_onemax_two002_fitness.png"
set title 'OneMax Two Peaks (PopSize: 40)'
plot "graph_onemax_two/graph_onemax_two16_fitness.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two17_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two18_fitness.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax_two/graph_onemax_two19_fitness.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax_two/graph_onemax_two20_fitness.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax_two/graph_onemax_two21_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax_two/graph_onemax_two22_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 7

set output "graph_onemax_two/graph_onemax_two003_fitness.png"
set title 'OneMax Two Peaks (Exact Random Distribution, PopSize: 40)'
plot "graph_onemax_two/graph_onemax_two24_fitness.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two25_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two26_fitness.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax_two/graph_onemax_two27_fitness.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax_two/graph_onemax_two28_fitness.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax_two/graph_onemax_two29_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax_two/graph_onemax_two30_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 7

set output "graph_onemax_two/graph_onemax_two004_fitness.png"
set title 'OneMax Two Peaks (PopSize: 70)'
plot "graph_onemax_two/graph_onemax_two32_fitness.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two33_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two34_fitness.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax_two/graph_onemax_two35_fitness.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax_two/graph_onemax_two36_fitness.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax_two/graph_onemax_two37_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax_two/graph_onemax_two38_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 7

set output "graph_onemax_two/graph_onemax_two005_fitness.png"
set title 'OneMax Two Peaks (Exact Random Distribution, PopSize: 70)'
plot "graph_onemax_two/graph_onemax_two40_fitness.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two41_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two42_fitness.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax_two/graph_onemax_two43_fitness.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax_two/graph_onemax_two44_fitness.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax_two/graph_onemax_two45_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax_two/graph_onemax_two46_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 7

set output "graph_onemax_two/graph_onemax_two006_fitness.png"
set title 'OneMax Two Peaks (PopSize: 100)'
plot "graph_onemax_two/graph_onemax_two48_fitness.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two49_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two50_fitness.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax_two/graph_onemax_two51_fitness.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax_two/graph_onemax_two52_fitness.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax_two/graph_onemax_two53_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax_two/graph_onemax_two54_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 7

set output "graph_onemax_two/graph_onemax_two007_fitness.png"
set title 'OneMax Two Peaks (Exact Random Distribution, PopSize: 100)'
plot "graph_onemax_two/graph_onemax_two56_fitness.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two57_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two58_fitness.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax_two/graph_onemax_two59_fitness.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax_two/graph_onemax_two60_fitness.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax_two/graph_onemax_two61_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax_two/graph_onemax_two62_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 7



set xlabel 'generation'
set ylabel 'diversity p*(1-p)'
set terminal png large size 750,500

set output "graph_onemax_two/graph_onemax_two000_diversity.png"
set title 'OneMax Two Peaks (PopSize: 10)'
plot "graph_onemax_two/graph_onemax_two0_diversity.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two1_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two2_diversity.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax_two/graph_onemax_two3_diversity.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax_two/graph_onemax_two4_diversity.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax_two/graph_onemax_two5_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax_two/graph_onemax_two6_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_onemax_two/graph_onemax_two7_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 8

set output "graph_onemax_two/graph_onemax_two001_diversity.png"
set title 'OneMax Two Peaks (Exact Random Distribution, PopSize: 10)'
plot "graph_onemax_two/graph_onemax_two8_diversity.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two9_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two10_diversity.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax_two/graph_onemax_two11_diversity.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax_two/graph_onemax_two12_diversity.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax_two/graph_onemax_two13_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax_two/graph_onemax_two14_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_onemax_two/graph_onemax_two15_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 8

set output "graph_onemax_two/graph_onemax_two002_diversity.png"
set title 'OneMax Two Peaks (PopSize: 40)'
plot "graph_onemax_two/graph_onemax_two16_diversity.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two17_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two18_diversity.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax_two/graph_onemax_two19_diversity.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax_two/graph_onemax_two20_diversity.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax_two/graph_onemax_two21_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax_two/graph_onemax_two22_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_onemax_two/graph_onemax_two23_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 8

set output "graph_onemax_two/graph_onemax_two003_diversity.png"
set title 'OneMax Two Peaks (Exact Random Distribution, PopSize: 40)'
plot "graph_onemax_two/graph_onemax_two24_diversity.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two25_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two26_diversity.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax_two/graph_onemax_two27_diversity.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax_two/graph_onemax_two28_diversity.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax_two/graph_onemax_two29_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax_two/graph_onemax_two30_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_onemax_two/graph_onemax_two31_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 8

set output "graph_onemax_two/graph_onemax_two004_diversity.png"
set title 'OneMax Two Peaks (PopSize: 70)'
plot "graph_onemax_two/graph_onemax_two32_diversity.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two33_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two34_diversity.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax_two/graph_onemax_two35_diversity.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax_two/graph_onemax_two36_diversity.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax_two/graph_onemax_two37_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax_two/graph_onemax_two38_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_onemax_two/graph_onemax_two39_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 8

set output "graph_onemax_two/graph_onemax_two005_diversity.png"
set title 'OneMax Two Peaks (Exact Random Distribution, PopSize: 70)'
plot "graph_onemax_two/graph_onemax_two40_diversity.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two41_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two42_diversity.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax_two/graph_onemax_two43_diversity.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax_two/graph_onemax_two44_diversity.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax_two/graph_onemax_two45_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax_two/graph_onemax_two46_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_onemax_two/graph_onemax_two47_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 8

set output "graph_onemax_two/graph_onemax_two006_diversity.png"
set title 'OneMax Two Peaks (PopSize: 100)'
plot "graph_onemax_two/graph_onemax_two48_diversity.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two49_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two50_diversity.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax_two/graph_onemax_two51_diversity.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax_two/graph_onemax_two52_diversity.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax_two/graph_onemax_two53_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax_two/graph_onemax_two54_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_onemax_two/graph_onemax_two55_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 8

set output "graph_onemax_two/graph_onemax_two007_diversity.png"
set title 'OneMax Two Peaks (Exact Random Distribution, PopSize: 100)'
plot "graph_onemax_two/graph_onemax_two56_diversity.gnp" ti "No correction" with lines ls 1, "graph_onemax_two/graph_onemax_two57_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_onemax_two/graph_onemax_two58_diversity.gnp" ti "Laplace correction" with lines ls 3, "graph_onemax_two/graph_onemax_two59_diversity.gnp" ti "Laplace remember correction" with lines ls 4, "graph_onemax_two/graph_onemax_two60_diversity.gnp" ti "Corrected distribution" with lines ls 5, "graph_onemax_two/graph_onemax_two61_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_onemax_two/graph_onemax_two62_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_onemax_two/graph_onemax_two63_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 8



