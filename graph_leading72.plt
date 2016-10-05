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
set style line 9 lt 9 lw 3
set style line 10 lt 1 lw 1
set style line 11 lt 2 lw 1
set style line 12 lt 3 lw 1
set style line 13 lt 4 lw 1
set style line 14 lt 5 lw 1
set style line 15 lt 6 lw 1
set style line 16 lt 7 lw 1
set style line 17 lt 8 lw 1
set style line 18 lt 9 lw 1

set output "graph_leading/graph_leading000_fitness.png"
set title 'Leading 1 (PopSize: 10)'
plot "graph_leading/graph_leading0_fitness.gnp" ti "No correction" with lines ls 1, "graph_leading/graph_leading1_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_leading/graph_leading2_fitness.gnp" ti "Laplace correction" with lines ls 3, "graph_leading/graph_leading3_fitness.gnp" ti "Laplace remember correction" with lines ls 4, "graph_leading/graph_leading4_fitness.gnp" ti "Corrected distribution" with lines ls 5, "graph_leading/graph_leading5_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_leading/graph_leading6_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_leading/graph_leading7_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 8

set output "graph_leading/graph_leading001_fitness.png"
set title 'Leading 1 (Exact Random Distribution, PopSize: 10)'
plot "graph_leading/graph_leading9_fitness.gnp" ti "No correction" with lines ls 1, "graph_leading/graph_leading10_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_leading/graph_leading11_fitness.gnp" ti "Laplace correction" with lines ls 3, "graph_leading/graph_leading12_fitness.gnp" ti "Laplace remember correction" with lines ls 4, "graph_leading/graph_leading13_fitness.gnp" ti "Corrected distribution" with lines ls 5, "graph_leading/graph_leading14_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_leading/graph_leading15_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_leading/graph_leading16_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 8

set output "graph_leading/graph_leading002_fitness.png"
set title 'Leading 1 (PopSize: 40)'
plot "graph_leading/graph_leading18_fitness.gnp" ti "No correction" with lines ls 1, "graph_leading/graph_leading19_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_leading/graph_leading20_fitness.gnp" ti "Laplace correction" with lines ls 3, "graph_leading/graph_leading21_fitness.gnp" ti "Laplace remember correction" with lines ls 4, "graph_leading/graph_leading22_fitness.gnp" ti "Corrected distribution" with lines ls 5, "graph_leading/graph_leading23_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_leading/graph_leading24_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_leading/graph_leading25_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 8

set output "graph_leading/graph_leading003_fitness.png"
set title 'Leading 1 (Exact Random Distribution, PopSize: 40)'
plot "graph_leading/graph_leading27_fitness.gnp" ti "No correction" with lines ls 1, "graph_leading/graph_leading28_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_leading/graph_leading29_fitness.gnp" ti "Laplace correction" with lines ls 3, "graph_leading/graph_leading30_fitness.gnp" ti "Laplace remember correction" with lines ls 4, "graph_leading/graph_leading31_fitness.gnp" ti "Corrected distribution" with lines ls 5, "graph_leading/graph_leading32_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_leading/graph_leading33_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_leading/graph_leading34_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 8

set output "graph_leading/graph_leading004_fitness.png"
set title 'Leading 1 (PopSize: 70)'
plot "graph_leading/graph_leading36_fitness.gnp" ti "No correction" with lines ls 1, "graph_leading/graph_leading37_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_leading/graph_leading38_fitness.gnp" ti "Laplace correction" with lines ls 3, "graph_leading/graph_leading39_fitness.gnp" ti "Laplace remember correction" with lines ls 4, "graph_leading/graph_leading40_fitness.gnp" ti "Corrected distribution" with lines ls 5, "graph_leading/graph_leading41_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_leading/graph_leading42_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_leading/graph_leading43_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 8

set output "graph_leading/graph_leading005_fitness.png"
set title 'Leading 1 (Exact Random Distribution, PopSize: 70)'
plot "graph_leading/graph_leading45_fitness.gnp" ti "No correction" with lines ls 1, "graph_leading/graph_leading46_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_leading/graph_leading47_fitness.gnp" ti "Laplace correction" with lines ls 3, "graph_leading/graph_leading48_fitness.gnp" ti "Laplace remember correction" with lines ls 4, "graph_leading/graph_leading49_fitness.gnp" ti "Corrected distribution" with lines ls 5, "graph_leading/graph_leading50_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_leading/graph_leading51_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_leading/graph_leading52_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 8

set output "graph_leading/graph_leading006_fitness.png"
set title 'Leading 1 (PopSize: 100)'
plot "graph_leading/graph_leading54_fitness.gnp" ti "No correction" with lines ls 1, "graph_leading/graph_leading55_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_leading/graph_leading56_fitness.gnp" ti "Laplace correction" with lines ls 3, "graph_leading/graph_leading57_fitness.gnp" ti "Laplace remember correction" with lines ls 4, "graph_leading/graph_leading58_fitness.gnp" ti "Corrected distribution" with lines ls 5, "graph_leading/graph_leading59_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_leading/graph_leading60_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_leading/graph_leading61_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 8

set output "graph_leading/graph_leading007_fitness.png"
set title 'Leading 1 (Exact Random Distribution, PopSize: 100)'
plot "graph_leading/graph_leading63_fitness.gnp" ti "No correction" with lines ls 1, "graph_leading/graph_leading64_fitness.gnp" ti "No correction + bounded" with lines ls 2, "graph_leading/graph_leading65_fitness.gnp" ti "Laplace correction" with lines ls 3, "graph_leading/graph_leading66_fitness.gnp" ti "Laplace remember correction" with lines ls 4, "graph_leading/graph_leading67_fitness.gnp" ti "Corrected distribution" with lines ls 5, "graph_leading/graph_leading68_fitness.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_leading/graph_leading69_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_leading/graph_leading70_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 8



set xlabel 'generation'
set ylabel 'diversity p*(1-p)'
set terminal png large size 750,500

set output "graph_leading/graph_leading000_diversity.png"
set title 'Leading 1 (PopSize: 10)'
plot "graph_leading/graph_leading0_diversity.gnp" ti "No correction" with lines ls 1, "graph_leading/graph_leading1_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_leading/graph_leading2_diversity.gnp" ti "Laplace correction" with lines ls 3, "graph_leading/graph_leading3_diversity.gnp" ti "Laplace remember correction" with lines ls 4, "graph_leading/graph_leading4_diversity.gnp" ti "Corrected distribution" with lines ls 5, "graph_leading/graph_leading5_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_leading/graph_leading6_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_leading/graph_leading7_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 8, "graph_leading/graph_leading8_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 9

set output "graph_leading/graph_leading001_diversity.png"
set title 'Leading 1 (Exact Random Distribution, PopSize: 10)'
plot "graph_leading/graph_leading9_diversity.gnp" ti "No correction" with lines ls 1, "graph_leading/graph_leading10_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_leading/graph_leading11_diversity.gnp" ti "Laplace correction" with lines ls 3, "graph_leading/graph_leading12_diversity.gnp" ti "Laplace remember correction" with lines ls 4, "graph_leading/graph_leading13_diversity.gnp" ti "Corrected distribution" with lines ls 5, "graph_leading/graph_leading14_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_leading/graph_leading15_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_leading/graph_leading16_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 8, "graph_leading/graph_leading17_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 9

set output "graph_leading/graph_leading002_diversity.png"
set title 'Leading 1 (PopSize: 40)'
plot "graph_leading/graph_leading18_diversity.gnp" ti "No correction" with lines ls 1, "graph_leading/graph_leading19_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_leading/graph_leading20_diversity.gnp" ti "Laplace correction" with lines ls 3, "graph_leading/graph_leading21_diversity.gnp" ti "Laplace remember correction" with lines ls 4, "graph_leading/graph_leading22_diversity.gnp" ti "Corrected distribution" with lines ls 5, "graph_leading/graph_leading23_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_leading/graph_leading24_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_leading/graph_leading25_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 8, "graph_leading/graph_leading26_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 9

set output "graph_leading/graph_leading003_diversity.png"
set title 'Leading 1 (Exact Random Distribution, PopSize: 40)'
plot "graph_leading/graph_leading27_diversity.gnp" ti "No correction" with lines ls 1, "graph_leading/graph_leading28_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_leading/graph_leading29_diversity.gnp" ti "Laplace correction" with lines ls 3, "graph_leading/graph_leading30_diversity.gnp" ti "Laplace remember correction" with lines ls 4, "graph_leading/graph_leading31_diversity.gnp" ti "Corrected distribution" with lines ls 5, "graph_leading/graph_leading32_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_leading/graph_leading33_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_leading/graph_leading34_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 8, "graph_leading/graph_leading35_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 9

set output "graph_leading/graph_leading004_diversity.png"
set title 'Leading 1 (PopSize: 70)'
plot "graph_leading/graph_leading36_diversity.gnp" ti "No correction" with lines ls 1, "graph_leading/graph_leading37_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_leading/graph_leading38_diversity.gnp" ti "Laplace correction" with lines ls 3, "graph_leading/graph_leading39_diversity.gnp" ti "Laplace remember correction" with lines ls 4, "graph_leading/graph_leading40_diversity.gnp" ti "Corrected distribution" with lines ls 5, "graph_leading/graph_leading41_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_leading/graph_leading42_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_leading/graph_leading43_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 8, "graph_leading/graph_leading44_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 9

set output "graph_leading/graph_leading005_diversity.png"
set title 'Leading 1 (Exact Random Distribution, PopSize: 70)'
plot "graph_leading/graph_leading45_diversity.gnp" ti "No correction" with lines ls 1, "graph_leading/graph_leading46_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_leading/graph_leading47_diversity.gnp" ti "Laplace correction" with lines ls 3, "graph_leading/graph_leading48_diversity.gnp" ti "Laplace remember correction" with lines ls 4, "graph_leading/graph_leading49_diversity.gnp" ti "Corrected distribution" with lines ls 5, "graph_leading/graph_leading50_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_leading/graph_leading51_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_leading/graph_leading52_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 8, "graph_leading/graph_leading53_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 9

set output "graph_leading/graph_leading006_diversity.png"
set title 'Leading 1 (PopSize: 100)'
plot "graph_leading/graph_leading54_diversity.gnp" ti "No correction" with lines ls 1, "graph_leading/graph_leading55_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_leading/graph_leading56_diversity.gnp" ti "Laplace correction" with lines ls 3, "graph_leading/graph_leading57_diversity.gnp" ti "Laplace remember correction" with lines ls 4, "graph_leading/graph_leading58_diversity.gnp" ti "Corrected distribution" with lines ls 5, "graph_leading/graph_leading59_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_leading/graph_leading60_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_leading/graph_leading61_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 8, "graph_leading/graph_leading62_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 9

set output "graph_leading/graph_leading007_diversity.png"
set title 'Leading 1 (Exact Random Distribution, PopSize: 100)'
plot "graph_leading/graph_leading63_diversity.gnp" ti "No correction" with lines ls 1, "graph_leading/graph_leading64_diversity.gnp" ti "No correction + bounded" with lines ls 2, "graph_leading/graph_leading65_diversity.gnp" ti "Laplace correction" with lines ls 3, "graph_leading/graph_leading66_diversity.gnp" ti "Laplace remember correction" with lines ls 4, "graph_leading/graph_leading67_diversity.gnp" ti "Corrected distribution" with lines ls 5, "graph_leading/graph_leading68_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 6, "graph_leading/graph_leading69_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 7, "graph_leading/graph_leading70_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 8, "graph_leading/graph_leading71_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 9



