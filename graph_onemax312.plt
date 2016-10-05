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
set title 'OneMax (k: 0.1, PopSize: 10)'
plot "graph_onemax/graph_onemax4_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax5_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax6_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax7_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax002_fitness.png"
set title 'OneMax (k: 0.15, PopSize: 10)'
plot "graph_onemax/graph_onemax8_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax9_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax10_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax11_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax003_fitness.png"
set title 'OneMax (k: 0.2, PopSize: 10)'
plot "graph_onemax/graph_onemax12_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax13_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax14_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax15_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax004_fitness.png"
set title 'OneMax (k: 0.25, PopSize: 10)'
plot "graph_onemax/graph_onemax16_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax17_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax18_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax19_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax005_fitness.png"
set title 'OneMax (k: 0.3, PopSize: 10)'
plot "graph_onemax/graph_onemax20_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax21_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax22_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax23_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax006_fitness.png"
set title 'OneMax (k: 0.35, PopSize: 10)'
plot "graph_onemax/graph_onemax24_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax25_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax26_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax27_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax007_fitness.png"
set title 'OneMax (k: 0.4, PopSize: 10)'
plot "graph_onemax/graph_onemax28_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax29_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax30_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax31_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax008_fitness.png"
set title 'OneMax (k: 0.45, PopSize: 10)'
plot "graph_onemax/graph_onemax32_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax33_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax34_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax35_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax009_fitness.png"
set title 'OneMax (k: 0.5, PopSize: 10)'
plot "graph_onemax/graph_onemax36_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax37_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax38_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax39_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax010_fitness.png"
set title 'OneMax (k: 0.55, PopSize: 10)'
plot "graph_onemax/graph_onemax40_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax41_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax42_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax43_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax011_fitness.png"
set title 'OneMax (k: 0.6, PopSize: 10)'
plot "graph_onemax/graph_onemax44_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax45_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax46_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax47_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax012_fitness.png"
set title 'OneMax (k: 0.65, PopSize: 10)'
plot "graph_onemax/graph_onemax48_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax49_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax50_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax51_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax013_fitness.png"
set title 'OneMax (k: 0.7, PopSize: 10)'
plot "graph_onemax/graph_onemax52_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax53_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax54_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax55_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax014_fitness.png"
set title 'OneMax (k: 0.75, PopSize: 10)'
plot "graph_onemax/graph_onemax56_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax57_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax58_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax59_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax015_fitness.png"
set title 'OneMax (k: 0.8, PopSize: 10)'
plot "graph_onemax/graph_onemax60_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax61_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax62_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax63_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax016_fitness.png"
set title 'OneMax (k: 0.85, PopSize: 10)'
plot "graph_onemax/graph_onemax64_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax65_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax66_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax67_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax017_fitness.png"
set title 'OneMax (k: 0.9, PopSize: 10)'
plot "graph_onemax/graph_onemax68_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax69_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax70_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax71_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax018_fitness.png"
set title 'OneMax (k: 0.95, PopSize: 10)'
plot "graph_onemax/graph_onemax72_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax73_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax74_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax75_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax019_fitness.png"
set title 'OneMax (k: 1, PopSize: 10)'
plot "graph_onemax/graph_onemax76_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax77_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax78_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax79_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax020_fitness.png"
set title 'OneMax (k: 1.05, PopSize: 10)'
plot "graph_onemax/graph_onemax80_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax81_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax82_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax83_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax021_fitness.png"
set title 'OneMax (k: 1.1, PopSize: 10)'
plot "graph_onemax/graph_onemax84_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax85_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax86_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax87_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax022_fitness.png"
set title 'OneMax (k: 1.15, PopSize: 10)'
plot "graph_onemax/graph_onemax88_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax89_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax90_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax91_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax023_fitness.png"
set title 'OneMax (k: 1.2, PopSize: 10)'
plot "graph_onemax/graph_onemax92_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax93_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax94_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax95_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax024_fitness.png"
set title 'OneMax (k: 1.25, PopSize: 10)'
plot "graph_onemax/graph_onemax96_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax97_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax98_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax99_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax025_fitness.png"
set title 'OneMax (k: 1.3, PopSize: 10)'
plot "graph_onemax/graph_onemax100_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax101_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax102_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax103_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax026_fitness.png"
set title 'OneMax (k: 1.35, PopSize: 10)'
plot "graph_onemax/graph_onemax104_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax105_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax106_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax107_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax027_fitness.png"
set title 'OneMax (k: 1.4, PopSize: 10)'
plot "graph_onemax/graph_onemax108_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax109_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax110_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax111_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax028_fitness.png"
set title 'OneMax (k: 1.45, PopSize: 10)'
plot "graph_onemax/graph_onemax112_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax113_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax114_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax115_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax029_fitness.png"
set title 'OneMax (k: 1.5, PopSize: 10)'
plot "graph_onemax/graph_onemax116_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax117_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax118_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax119_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax030_fitness.png"
set title 'OneMax (k: 1.55, PopSize: 10)'
plot "graph_onemax/graph_onemax120_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax121_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax122_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax123_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax031_fitness.png"
set title 'OneMax (k: 1.6, PopSize: 10)'
plot "graph_onemax/graph_onemax124_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax125_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax126_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax127_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax032_fitness.png"
set title 'OneMax (k: 1.65, PopSize: 10)'
plot "graph_onemax/graph_onemax128_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax129_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax130_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax131_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax033_fitness.png"
set title 'OneMax (k: 1.7, PopSize: 10)'
plot "graph_onemax/graph_onemax132_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax133_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax134_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax135_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax034_fitness.png"
set title 'OneMax (k: 1.75, PopSize: 10)'
plot "graph_onemax/graph_onemax136_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax137_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax138_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax139_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax035_fitness.png"
set title 'OneMax (k: 1.8, PopSize: 10)'
plot "graph_onemax/graph_onemax140_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax141_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax142_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax143_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax036_fitness.png"
set title 'OneMax (k: 1.85, PopSize: 10)'
plot "graph_onemax/graph_onemax144_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax145_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax146_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax147_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax037_fitness.png"
set title 'OneMax (k: 1.9, PopSize: 10)'
plot "graph_onemax/graph_onemax148_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax149_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax150_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax151_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax038_fitness.png"
set title 'OneMax (k: 1.95, PopSize: 10)'
plot "graph_onemax/graph_onemax152_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax153_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax154_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax155_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax039_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.05, PopSize: 10)'
plot "graph_onemax/graph_onemax156_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax157_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax158_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax159_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax040_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.1, PopSize: 10)'
plot "graph_onemax/graph_onemax160_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax161_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax162_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax163_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax041_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.15, PopSize: 10)'
plot "graph_onemax/graph_onemax164_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax165_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax166_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax167_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax042_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.2, PopSize: 10)'
plot "graph_onemax/graph_onemax168_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax169_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax170_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax171_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax043_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.25, PopSize: 10)'
plot "graph_onemax/graph_onemax172_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax173_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax174_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax175_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax044_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.3, PopSize: 10)'
plot "graph_onemax/graph_onemax176_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax177_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax178_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax179_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax045_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.35, PopSize: 10)'
plot "graph_onemax/graph_onemax180_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax181_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax182_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax183_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax046_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.4, PopSize: 10)'
plot "graph_onemax/graph_onemax184_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax185_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax186_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax187_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax047_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.45, PopSize: 10)'
plot "graph_onemax/graph_onemax188_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax189_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax190_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax191_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax048_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.5, PopSize: 10)'
plot "graph_onemax/graph_onemax192_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax193_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax194_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax195_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax049_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.55, PopSize: 10)'
plot "graph_onemax/graph_onemax196_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax197_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax198_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax199_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax050_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.6, PopSize: 10)'
plot "graph_onemax/graph_onemax200_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax201_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax202_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax203_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax051_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.65, PopSize: 10)'
plot "graph_onemax/graph_onemax204_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax205_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax206_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax207_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax052_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.7, PopSize: 10)'
plot "graph_onemax/graph_onemax208_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax209_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax210_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax211_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax053_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.75, PopSize: 10)'
plot "graph_onemax/graph_onemax212_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax213_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax214_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax215_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax054_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.8, PopSize: 10)'
plot "graph_onemax/graph_onemax216_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax217_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax218_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax219_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax055_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.85, PopSize: 10)'
plot "graph_onemax/graph_onemax220_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax221_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax222_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax223_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax056_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.9, PopSize: 10)'
plot "graph_onemax/graph_onemax224_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax225_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax226_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax227_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax057_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 0.95, PopSize: 10)'
plot "graph_onemax/graph_onemax228_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax229_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax230_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax231_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax058_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1, PopSize: 10)'
plot "graph_onemax/graph_onemax232_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax233_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax234_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax235_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax059_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.05, PopSize: 10)'
plot "graph_onemax/graph_onemax236_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax237_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax238_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax239_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax060_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.1, PopSize: 10)'
plot "graph_onemax/graph_onemax240_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax241_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax242_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax243_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax061_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.15, PopSize: 10)'
plot "graph_onemax/graph_onemax244_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax245_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax246_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax247_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax062_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.2, PopSize: 10)'
plot "graph_onemax/graph_onemax248_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax249_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax250_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax251_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax063_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.25, PopSize: 10)'
plot "graph_onemax/graph_onemax252_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax253_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax254_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax255_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax064_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.3, PopSize: 10)'
plot "graph_onemax/graph_onemax256_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax257_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax258_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax259_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax065_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.35, PopSize: 10)'
plot "graph_onemax/graph_onemax260_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax261_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax262_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax263_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax066_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.4, PopSize: 10)'
plot "graph_onemax/graph_onemax264_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax265_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax266_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax267_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax067_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.45, PopSize: 10)'
plot "graph_onemax/graph_onemax268_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax269_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax270_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax271_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax068_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.5, PopSize: 10)'
plot "graph_onemax/graph_onemax272_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax273_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax274_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax275_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax069_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.55, PopSize: 10)'
plot "graph_onemax/graph_onemax276_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax277_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax278_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax279_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax070_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.6, PopSize: 10)'
plot "graph_onemax/graph_onemax280_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax281_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax282_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax283_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax071_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.65, PopSize: 10)'
plot "graph_onemax/graph_onemax284_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax285_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax286_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax287_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax072_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.7, PopSize: 10)'
plot "graph_onemax/graph_onemax288_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax289_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax290_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax291_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax073_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.75, PopSize: 10)'
plot "graph_onemax/graph_onemax292_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax293_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax294_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax295_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax074_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.8, PopSize: 10)'
plot "graph_onemax/graph_onemax296_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax297_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax298_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax299_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax075_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.85, PopSize: 10)'
plot "graph_onemax/graph_onemax300_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax301_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax302_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax303_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax076_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.9, PopSize: 10)'
plot "graph_onemax/graph_onemax304_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax305_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax306_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax307_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax077_fitness.png"
set title 'OneMax (Exact Random Distribution, k: 1.95, PopSize: 10)'
plot "graph_onemax/graph_onemax308_fitness.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax309_fitness.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax310_fitness.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax311_fitness.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4



set xlabel 'generation'
set ylabel 'diversity p*(1-p)'
set terminal png large size 750,500

set output "graph_onemax/graph_onemax000_diversity.png"
set title 'OneMax (k: 0.05, PopSize: 10)'
plot "graph_onemax/graph_onemax0_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax1_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax2_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax3_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax001_diversity.png"
set title 'OneMax (k: 0.1, PopSize: 10)'
plot "graph_onemax/graph_onemax4_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax5_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax6_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax7_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax002_diversity.png"
set title 'OneMax (k: 0.15, PopSize: 10)'
plot "graph_onemax/graph_onemax8_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax9_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax10_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax11_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax003_diversity.png"
set title 'OneMax (k: 0.2, PopSize: 10)'
plot "graph_onemax/graph_onemax12_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax13_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax14_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax15_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax004_diversity.png"
set title 'OneMax (k: 0.25, PopSize: 10)'
plot "graph_onemax/graph_onemax16_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax17_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax18_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax19_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax005_diversity.png"
set title 'OneMax (k: 0.3, PopSize: 10)'
plot "graph_onemax/graph_onemax20_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax21_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax22_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax23_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax006_diversity.png"
set title 'OneMax (k: 0.35, PopSize: 10)'
plot "graph_onemax/graph_onemax24_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax25_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax26_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax27_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax007_diversity.png"
set title 'OneMax (k: 0.4, PopSize: 10)'
plot "graph_onemax/graph_onemax28_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax29_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax30_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax31_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax008_diversity.png"
set title 'OneMax (k: 0.45, PopSize: 10)'
plot "graph_onemax/graph_onemax32_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax33_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax34_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax35_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax009_diversity.png"
set title 'OneMax (k: 0.5, PopSize: 10)'
plot "graph_onemax/graph_onemax36_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax37_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax38_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax39_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax010_diversity.png"
set title 'OneMax (k: 0.55, PopSize: 10)'
plot "graph_onemax/graph_onemax40_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax41_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax42_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax43_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax011_diversity.png"
set title 'OneMax (k: 0.6, PopSize: 10)'
plot "graph_onemax/graph_onemax44_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax45_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax46_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax47_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax012_diversity.png"
set title 'OneMax (k: 0.65, PopSize: 10)'
plot "graph_onemax/graph_onemax48_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax49_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax50_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax51_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax013_diversity.png"
set title 'OneMax (k: 0.7, PopSize: 10)'
plot "graph_onemax/graph_onemax52_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax53_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax54_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax55_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax014_diversity.png"
set title 'OneMax (k: 0.75, PopSize: 10)'
plot "graph_onemax/graph_onemax56_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax57_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax58_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax59_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax015_diversity.png"
set title 'OneMax (k: 0.8, PopSize: 10)'
plot "graph_onemax/graph_onemax60_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax61_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax62_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax63_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax016_diversity.png"
set title 'OneMax (k: 0.85, PopSize: 10)'
plot "graph_onemax/graph_onemax64_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax65_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax66_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax67_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax017_diversity.png"
set title 'OneMax (k: 0.9, PopSize: 10)'
plot "graph_onemax/graph_onemax68_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax69_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax70_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax71_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax018_diversity.png"
set title 'OneMax (k: 0.95, PopSize: 10)'
plot "graph_onemax/graph_onemax72_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax73_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax74_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax75_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax019_diversity.png"
set title 'OneMax (k: 1, PopSize: 10)'
plot "graph_onemax/graph_onemax76_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax77_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax78_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax79_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax020_diversity.png"
set title 'OneMax (k: 1.05, PopSize: 10)'
plot "graph_onemax/graph_onemax80_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax81_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax82_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax83_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax021_diversity.png"
set title 'OneMax (k: 1.1, PopSize: 10)'
plot "graph_onemax/graph_onemax84_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax85_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax86_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax87_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax022_diversity.png"
set title 'OneMax (k: 1.15, PopSize: 10)'
plot "graph_onemax/graph_onemax88_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax89_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax90_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax91_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax023_diversity.png"
set title 'OneMax (k: 1.2, PopSize: 10)'
plot "graph_onemax/graph_onemax92_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax93_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax94_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax95_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax024_diversity.png"
set title 'OneMax (k: 1.25, PopSize: 10)'
plot "graph_onemax/graph_onemax96_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax97_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax98_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax99_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax025_diversity.png"
set title 'OneMax (k: 1.3, PopSize: 10)'
plot "graph_onemax/graph_onemax100_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax101_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax102_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax103_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax026_diversity.png"
set title 'OneMax (k: 1.35, PopSize: 10)'
plot "graph_onemax/graph_onemax104_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax105_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax106_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax107_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax027_diversity.png"
set title 'OneMax (k: 1.4, PopSize: 10)'
plot "graph_onemax/graph_onemax108_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax109_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax110_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax111_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax028_diversity.png"
set title 'OneMax (k: 1.45, PopSize: 10)'
plot "graph_onemax/graph_onemax112_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax113_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax114_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax115_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax029_diversity.png"
set title 'OneMax (k: 1.5, PopSize: 10)'
plot "graph_onemax/graph_onemax116_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax117_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax118_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax119_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax030_diversity.png"
set title 'OneMax (k: 1.55, PopSize: 10)'
plot "graph_onemax/graph_onemax120_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax121_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax122_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax123_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax031_diversity.png"
set title 'OneMax (k: 1.6, PopSize: 10)'
plot "graph_onemax/graph_onemax124_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax125_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax126_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax127_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax032_diversity.png"
set title 'OneMax (k: 1.65, PopSize: 10)'
plot "graph_onemax/graph_onemax128_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax129_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax130_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax131_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax033_diversity.png"
set title 'OneMax (k: 1.7, PopSize: 10)'
plot "graph_onemax/graph_onemax132_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax133_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax134_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax135_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax034_diversity.png"
set title 'OneMax (k: 1.75, PopSize: 10)'
plot "graph_onemax/graph_onemax136_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax137_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax138_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax139_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax035_diversity.png"
set title 'OneMax (k: 1.8, PopSize: 10)'
plot "graph_onemax/graph_onemax140_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax141_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax142_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax143_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax036_diversity.png"
set title 'OneMax (k: 1.85, PopSize: 10)'
plot "graph_onemax/graph_onemax144_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax145_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax146_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax147_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax037_diversity.png"
set title 'OneMax (k: 1.9, PopSize: 10)'
plot "graph_onemax/graph_onemax148_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax149_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax150_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax151_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax038_diversity.png"
set title 'OneMax (k: 1.95, PopSize: 10)'
plot "graph_onemax/graph_onemax152_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax153_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax154_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax155_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax039_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.05, PopSize: 10)'
plot "graph_onemax/graph_onemax156_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax157_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax158_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax159_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax040_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.1, PopSize: 10)'
plot "graph_onemax/graph_onemax160_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax161_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax162_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax163_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax041_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.15, PopSize: 10)'
plot "graph_onemax/graph_onemax164_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax165_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax166_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax167_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax042_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.2, PopSize: 10)'
plot "graph_onemax/graph_onemax168_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax169_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax170_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax171_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax043_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.25, PopSize: 10)'
plot "graph_onemax/graph_onemax172_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax173_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax174_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax175_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax044_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.3, PopSize: 10)'
plot "graph_onemax/graph_onemax176_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax177_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax178_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax179_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax045_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.35, PopSize: 10)'
plot "graph_onemax/graph_onemax180_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax181_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax182_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax183_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax046_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.4, PopSize: 10)'
plot "graph_onemax/graph_onemax184_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax185_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax186_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax187_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax047_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.45, PopSize: 10)'
plot "graph_onemax/graph_onemax188_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax189_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax190_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax191_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax048_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.5, PopSize: 10)'
plot "graph_onemax/graph_onemax192_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax193_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax194_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax195_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax049_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.55, PopSize: 10)'
plot "graph_onemax/graph_onemax196_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax197_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax198_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax199_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax050_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.6, PopSize: 10)'
plot "graph_onemax/graph_onemax200_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax201_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax202_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax203_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax051_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.65, PopSize: 10)'
plot "graph_onemax/graph_onemax204_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax205_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax206_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax207_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax052_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.7, PopSize: 10)'
plot "graph_onemax/graph_onemax208_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax209_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax210_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax211_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax053_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.75, PopSize: 10)'
plot "graph_onemax/graph_onemax212_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax213_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax214_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax215_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax054_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.8, PopSize: 10)'
plot "graph_onemax/graph_onemax216_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax217_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax218_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax219_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax055_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.85, PopSize: 10)'
plot "graph_onemax/graph_onemax220_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax221_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax222_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax223_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax056_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.9, PopSize: 10)'
plot "graph_onemax/graph_onemax224_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax225_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax226_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax227_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax057_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 0.95, PopSize: 10)'
plot "graph_onemax/graph_onemax228_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax229_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax230_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax231_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax058_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1, PopSize: 10)'
plot "graph_onemax/graph_onemax232_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax233_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax234_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax235_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax059_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.05, PopSize: 10)'
plot "graph_onemax/graph_onemax236_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax237_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax238_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax239_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax060_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.1, PopSize: 10)'
plot "graph_onemax/graph_onemax240_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax241_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax242_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax243_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax061_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.15, PopSize: 10)'
plot "graph_onemax/graph_onemax244_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax245_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax246_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax247_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax062_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.2, PopSize: 10)'
plot "graph_onemax/graph_onemax248_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax249_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax250_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax251_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax063_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.25, PopSize: 10)'
plot "graph_onemax/graph_onemax252_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax253_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax254_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax255_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax064_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.3, PopSize: 10)'
plot "graph_onemax/graph_onemax256_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax257_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax258_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax259_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax065_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.35, PopSize: 10)'
plot "graph_onemax/graph_onemax260_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax261_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax262_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax263_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax066_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.4, PopSize: 10)'
plot "graph_onemax/graph_onemax264_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax265_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax266_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax267_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax067_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.45, PopSize: 10)'
plot "graph_onemax/graph_onemax268_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax269_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax270_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax271_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax068_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.5, PopSize: 10)'
plot "graph_onemax/graph_onemax272_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax273_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax274_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax275_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax069_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.55, PopSize: 10)'
plot "graph_onemax/graph_onemax276_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax277_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax278_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax279_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax070_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.6, PopSize: 10)'
plot "graph_onemax/graph_onemax280_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax281_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax282_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax283_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax071_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.65, PopSize: 10)'
plot "graph_onemax/graph_onemax284_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax285_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax286_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax287_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax072_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.7, PopSize: 10)'
plot "graph_onemax/graph_onemax288_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax289_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax290_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax291_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax073_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.75, PopSize: 10)'
plot "graph_onemax/graph_onemax292_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax293_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax294_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax295_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax074_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.8, PopSize: 10)'
plot "graph_onemax/graph_onemax296_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax297_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax298_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax299_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax075_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.85, PopSize: 10)'
plot "graph_onemax/graph_onemax300_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax301_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax302_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax303_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax076_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.9, PopSize: 10)'
plot "graph_onemax/graph_onemax304_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax305_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax306_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax307_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4

set output "graph_onemax/graph_onemax077_diversity.png"
set title 'OneMax (Exact Random Distribution, k: 1.95, PopSize: 10)'
plot "graph_onemax/graph_onemax308_diversity.gnp" ti "Laplace correction" with lines ls 1, "graph_onemax/graph_onemax309_diversity.gnp" ti "Laplace remember correction" with lines ls 2, "graph_onemax/graph_onemax310_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 3, "graph_onemax/graph_onemax311_diversity.gnp" ti "Corrected distribution + r. Laplace" with lines ls 4



