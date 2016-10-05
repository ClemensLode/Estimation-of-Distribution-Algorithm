set xlabel 'generation'
set ylabel 'fitness'
set terminal png large size 750,500
set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 4 lw 3
set style line 5 lt 5 lw 3
set style line 6 lt 6 lw 3
set style line 7 lt 1 lw 1
set style line 8 lt 2 lw 1
set style line 9 lt 3 lw 1
set style line 10 lt 4 lw 1
set style line 11 lt 5 lw 1
set style line 12 lt 6 lw 1

set xlabel 'generation'
set ylabel 'diversity p*(1-p)'
set terminal png large size 750,500

set output "graph_haystack/graph_haystack000_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 4)'
plot "graph_haystack/graph_haystack0_diversity.gnp" ti "No correction + bounded" with lines ls 1, "graph_haystack/graph_haystack0_diversity_quartil.gnp" ti "No correction + bounded 1/4 and 3/4 quartil" with lines ls 7, "graph_haystack/graph_haystack1_diversity.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack1_diversity_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 8, "graph_haystack/graph_haystack2_diversity.gnp" ti "Corrected distribution" with lines ls 3, "graph_haystack/graph_haystack2_diversity_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 9, "graph_haystack/graph_haystack3_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 4, "graph_haystack/graph_haystack3_diversity_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 10, "graph_haystack/graph_haystack4_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 5, "graph_haystack/graph_haystack4_diversity_quartil.gnp" ti "Corrected distribution + Laplace 1/4 and 3/4 quartil" with lines ls 11, "graph_haystack/graph_haystack5_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 6

set output "graph_haystack/graph_haystack001_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 128)'
plot "graph_haystack/graph_haystack6_diversity.gnp" ti "No correction + bounded" with lines ls 1, "graph_haystack/graph_haystack6_diversity_quartil.gnp" ti "No correction + bounded 1/4 and 3/4 quartil" with lines ls 7, "graph_haystack/graph_haystack7_diversity.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack7_diversity_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 8, "graph_haystack/graph_haystack8_diversity.gnp" ti "Corrected distribution" with lines ls 3, "graph_haystack/graph_haystack8_diversity_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 9, "graph_haystack/graph_haystack9_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 4, "graph_haystack/graph_haystack9_diversity_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 10, "graph_haystack/graph_haystack10_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 5, "graph_haystack/graph_haystack10_diversity_quartil.gnp" ti "Corrected distribution + Laplace 1/4 and 3/4 quartil" with lines ls 11, "graph_haystack/graph_haystack11_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 6

set output "graph_haystack/graph_haystack002_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 252)'
plot "graph_haystack/graph_haystack12_diversity.gnp" ti "No correction + bounded" with lines ls 1, "graph_haystack/graph_haystack12_diversity_quartil.gnp" ti "No correction + bounded 1/4 and 3/4 quartil" with lines ls 7, "graph_haystack/graph_haystack13_diversity.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack13_diversity_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 8, "graph_haystack/graph_haystack14_diversity.gnp" ti "Corrected distribution" with lines ls 3, "graph_haystack/graph_haystack14_diversity_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 9, "graph_haystack/graph_haystack15_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 4, "graph_haystack/graph_haystack15_diversity_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 10, "graph_haystack/graph_haystack16_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 5, "graph_haystack/graph_haystack16_diversity_quartil.gnp" ti "Corrected distribution + Laplace 1/4 and 3/4 quartil" with lines ls 11, "graph_haystack/graph_haystack17_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 6

set output "graph_haystack/graph_haystack003_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 376)'
plot "graph_haystack/graph_haystack18_diversity.gnp" ti "No correction + bounded" with lines ls 1, "graph_haystack/graph_haystack18_diversity_quartil.gnp" ti "No correction + bounded 1/4 and 3/4 quartil" with lines ls 7, "graph_haystack/graph_haystack19_diversity.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack19_diversity_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 8, "graph_haystack/graph_haystack20_diversity.gnp" ti "Corrected distribution" with lines ls 3, "graph_haystack/graph_haystack20_diversity_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 9, "graph_haystack/graph_haystack21_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 4, "graph_haystack/graph_haystack21_diversity_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 10, "graph_haystack/graph_haystack22_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 5, "graph_haystack/graph_haystack22_diversity_quartil.gnp" ti "Corrected distribution + Laplace 1/4 and 3/4 quartil" with lines ls 11, "graph_haystack/graph_haystack23_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 6

set output "graph_haystack/graph_haystack004_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 500)'
plot "graph_haystack/graph_haystack24_diversity.gnp" ti "No correction + bounded" with lines ls 1, "graph_haystack/graph_haystack24_diversity_quartil.gnp" ti "No correction + bounded 1/4 and 3/4 quartil" with lines ls 7, "graph_haystack/graph_haystack25_diversity.gnp" ti "Laplace correction" with lines ls 2, "graph_haystack/graph_haystack25_diversity_quartil.gnp" ti "Laplace correction 1/4 and 3/4 quartil" with lines ls 8, "graph_haystack/graph_haystack26_diversity.gnp" ti "Corrected distribution" with lines ls 3, "graph_haystack/graph_haystack26_diversity_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 9, "graph_haystack/graph_haystack27_diversity.gnp" ti "Corrected distribution + bounded" with lines ls 4, "graph_haystack/graph_haystack27_diversity_quartil.gnp" ti "Corrected distribution + bounded 1/4 and 3/4 quartil" with lines ls 10, "graph_haystack/graph_haystack28_diversity.gnp" ti "Corrected distribution + Laplace" with lines ls 5, "graph_haystack/graph_haystack28_diversity_quartil.gnp" ti "Corrected distribution + Laplace 1/4 and 3/4 quartil" with lines ls 11, "graph_haystack/graph_haystack29_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 6



