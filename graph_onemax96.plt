set xlabel 'generation'
set ylabel 'fitness'
set terminal png large size 750,500
set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 4 lw 3
set style line 5 lt 1 lw 1
set style line 6 lt 2 lw 1
set style line 7 lt 3 lw 1
set style line 8 lt 4 lw 1

set output "graph_onemax/graph_onemax000_fitness.png"
set title 'OneMax (k: 0.05, PopSize: 10)'
plot "graph_onemax/graph_onemax0_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax1_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax2_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax3_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax001_fitness.png"
set title 'OneMax (k: 0.2125, PopSize: 10)'
plot "graph_onemax/graph_onemax4_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax5_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax6_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax7_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax002_fitness.png"
set title 'OneMax (k: 0.375, PopSize: 10)'
plot "graph_onemax/graph_onemax8_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax9_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax10_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax11_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax003_fitness.png"
set title 'OneMax (k: 0.5375, PopSize: 10)'
plot "graph_onemax/graph_onemax12_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax13_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax14_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax15_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax004_fitness.png"
set title 'OneMax (k: 0.7, PopSize: 10)'
plot "graph_onemax/graph_onemax16_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax17_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax18_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax19_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax005_fitness.png"
set title 'OneMax (k: 0.8625, PopSize: 10)'
plot "graph_onemax/graph_onemax20_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax21_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax22_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax23_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax006_fitness.png"
set title 'OneMax (k: 1.025, PopSize: 10)'
plot "graph_onemax/graph_onemax24_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax25_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax26_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax27_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax007_fitness.png"
set title 'OneMax (k: 1.1875, PopSize: 10)'
plot "graph_onemax/graph_onemax28_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax29_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax30_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax31_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax008_fitness.png"
set title 'OneMax (k: 1.35, PopSize: 10)'
plot "graph_onemax/graph_onemax32_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax33_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax34_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax35_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax009_fitness.png"
set title 'OneMax (k: 1.5125, PopSize: 10)'
plot "graph_onemax/graph_onemax36_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax37_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax38_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax39_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax010_fitness.png"
set title 'OneMax (k: 1.675, PopSize: 10)'
plot "graph_onemax/graph_onemax40_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax41_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax42_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax43_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax011_fitness.png"
set title 'OneMax (k: 1.8375, PopSize: 10)'
plot "graph_onemax/graph_onemax44_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax45_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax46_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax47_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax012_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.05, PopSize: 10)'
plot "graph_onemax/graph_onemax48_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax49_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax50_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax51_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax013_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.2125, PopSize: 10)'
plot "graph_onemax/graph_onemax52_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax53_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax54_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax55_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax014_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.375, PopSize: 10)'
plot "graph_onemax/graph_onemax56_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax57_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax58_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax59_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax015_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.5375, PopSize: 10)'
plot "graph_onemax/graph_onemax60_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax61_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax62_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax63_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax016_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.7, PopSize: 10)'
plot "graph_onemax/graph_onemax64_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax65_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax66_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax67_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax017_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.8625, PopSize: 10)'
plot "graph_onemax/graph_onemax68_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax69_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax70_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax71_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax018_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.025, PopSize: 10)'
plot "graph_onemax/graph_onemax72_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax73_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax74_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax75_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax019_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.1875, PopSize: 10)'
plot "graph_onemax/graph_onemax76_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax77_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax78_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax79_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax020_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.35, PopSize: 10)'
plot "graph_onemax/graph_onemax80_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax81_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax82_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax83_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax021_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.5125, PopSize: 10)'
plot "graph_onemax/graph_onemax84_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax85_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax86_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax87_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax022_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.675, PopSize: 10)'
plot "graph_onemax/graph_onemax88_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax89_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax90_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax91_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax023_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.8375, PopSize: 10)'
plot "graph_onemax/graph_onemax92_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax93_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax94_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax95_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4



set xlabel 'generation'
set ylabel 'diversity p*(1-p)'
set terminal png large size 750,500

set output "graph_onemax/graph_onemax000_diversity.png"
set title 'OneMax (k: 0.05, PopSize: 10)'
plot "graph_onemax/graph_onemax0_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax1_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax2_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax3_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax001_diversity.png"
set title 'OneMax (k: 0.2125, PopSize: 10)'
plot "graph_onemax/graph_onemax4_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax5_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax6_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax7_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax002_diversity.png"
set title 'OneMax (k: 0.375, PopSize: 10)'
plot "graph_onemax/graph_onemax8_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax9_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax10_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax11_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax003_diversity.png"
set title 'OneMax (k: 0.5375, PopSize: 10)'
plot "graph_onemax/graph_onemax12_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax13_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax14_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax15_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax004_diversity.png"
set title 'OneMax (k: 0.7, PopSize: 10)'
plot "graph_onemax/graph_onemax16_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax17_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax18_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax19_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax005_diversity.png"
set title 'OneMax (k: 0.8625, PopSize: 10)'
plot "graph_onemax/graph_onemax20_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax21_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax22_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax23_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax006_diversity.png"
set title 'OneMax (k: 1.025, PopSize: 10)'
plot "graph_onemax/graph_onemax24_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax25_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax26_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax27_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax007_diversity.png"
set title 'OneMax (k: 1.1875, PopSize: 10)'
plot "graph_onemax/graph_onemax28_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax29_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax30_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax31_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax008_diversity.png"
set title 'OneMax (k: 1.35, PopSize: 10)'
plot "graph_onemax/graph_onemax32_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax33_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax34_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax35_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax009_diversity.png"
set title 'OneMax (k: 1.5125, PopSize: 10)'
plot "graph_onemax/graph_onemax36_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax37_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax38_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax39_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax010_diversity.png"
set title 'OneMax (k: 1.675, PopSize: 10)'
plot "graph_onemax/graph_onemax40_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax41_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax42_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax43_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax011_diversity.png"
set title 'OneMax (k: 1.8375, PopSize: 10)'
plot "graph_onemax/graph_onemax44_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax45_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax46_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax47_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax012_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.05, PopSize: 10)'
plot "graph_onemax/graph_onemax48_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax49_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax50_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax51_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax013_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.2125, PopSize: 10)'
plot "graph_onemax/graph_onemax52_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax53_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax54_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax55_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax014_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.375, PopSize: 10)'
plot "graph_onemax/graph_onemax56_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax57_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax58_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax59_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax015_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.5375, PopSize: 10)'
plot "graph_onemax/graph_onemax60_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax61_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax62_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax63_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax016_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.7, PopSize: 10)'
plot "graph_onemax/graph_onemax64_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax65_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax66_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax67_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax017_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.8625, PopSize: 10)'
plot "graph_onemax/graph_onemax68_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax69_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax70_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax71_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax018_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.025, PopSize: 10)'
plot "graph_onemax/graph_onemax72_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax73_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax74_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax75_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax019_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.1875, PopSize: 10)'
plot "graph_onemax/graph_onemax76_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax77_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax78_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax79_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax020_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.35, PopSize: 10)'
plot "graph_onemax/graph_onemax80_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax81_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax82_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax83_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax021_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.5125, PopSize: 10)'
plot "graph_onemax/graph_onemax84_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax85_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax86_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax87_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax022_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.675, PopSize: 10)'
plot "graph_onemax/graph_onemax88_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax89_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax90_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax91_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax023_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.8375, PopSize: 10)'
plot "graph_onemax/graph_onemax92_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax93_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax94_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax95_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4



