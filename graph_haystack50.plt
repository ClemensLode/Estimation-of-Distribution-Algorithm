set xlabel 'generation'
set ylabel 'fitness'
set terminal png large size 750,500
set style line 1 lt 1 lw 3
set style line 2 lt 1 lw 1

set xlabel 'generation'
set ylabel 'diversity p*(1-p)'
set terminal png large size 750,500

set output "graph_haystack/graph_haystack0_diversity.png"
set title 'Needle in a haystack (PopSize: 4)'
plot "graph_haystack/graph_haystack0_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack0_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack1_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 4)'
plot "graph_haystack/graph_haystack1_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack1_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack2_diversity.png"
set title 'Needle in a haystack (PopSize: 6)'
plot "graph_haystack/graph_haystack2_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack2_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack3_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 6)'
plot "graph_haystack/graph_haystack3_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack3_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack4_diversity.png"
set title 'Needle in a haystack (PopSize: 8)'
plot "graph_haystack/graph_haystack4_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack4_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack5_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 8)'
plot "graph_haystack/graph_haystack5_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack5_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack6_diversity.png"
set title 'Needle in a haystack (PopSize: 10)'
plot "graph_haystack/graph_haystack6_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack6_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack7_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 10)'
plot "graph_haystack/graph_haystack7_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack7_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack8_diversity.png"
set title 'Needle in a haystack (PopSize: 12)'
plot "graph_haystack/graph_haystack8_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack8_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack9_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 12)'
plot "graph_haystack/graph_haystack9_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack9_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack10_diversity.png"
set title 'Needle in a haystack (PopSize: 14)'
plot "graph_haystack/graph_haystack10_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack10_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack11_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 14)'
plot "graph_haystack/graph_haystack11_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack11_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack12_diversity.png"
set title 'Needle in a haystack (PopSize: 16)'
plot "graph_haystack/graph_haystack12_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack12_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack13_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 16)'
plot "graph_haystack/graph_haystack13_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack13_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack14_diversity.png"
set title 'Needle in a haystack (PopSize: 18)'
plot "graph_haystack/graph_haystack14_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack14_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack15_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 18)'
plot "graph_haystack/graph_haystack15_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack15_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack16_diversity.png"
set title 'Needle in a haystack (PopSize: 20)'
plot "graph_haystack/graph_haystack16_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack16_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack17_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 20)'
plot "graph_haystack/graph_haystack17_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack17_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack18_diversity.png"
set title 'Needle in a haystack (PopSize: 22)'
plot "graph_haystack/graph_haystack18_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack18_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack19_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 22)'
plot "graph_haystack/graph_haystack19_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack19_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack20_diversity.png"
set title 'Needle in a haystack (PopSize: 24)'
plot "graph_haystack/graph_haystack20_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack20_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack21_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 24)'
plot "graph_haystack/graph_haystack21_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack21_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack22_diversity.png"
set title 'Needle in a haystack (PopSize: 26)'
plot "graph_haystack/graph_haystack22_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack22_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack23_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 26)'
plot "graph_haystack/graph_haystack23_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack23_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack24_diversity.png"
set title 'Needle in a haystack (PopSize: 28)'
plot "graph_haystack/graph_haystack24_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack24_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack25_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 28)'
plot "graph_haystack/graph_haystack25_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack25_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack26_diversity.png"
set title 'Needle in a haystack (PopSize: 30)'
plot "graph_haystack/graph_haystack26_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack26_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack27_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 30)'
plot "graph_haystack/graph_haystack27_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack27_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack28_diversity.png"
set title 'Needle in a haystack (PopSize: 32)'
plot "graph_haystack/graph_haystack28_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack28_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack29_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 32)'
plot "graph_haystack/graph_haystack29_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack29_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack30_diversity.png"
set title 'Needle in a haystack (PopSize: 34)'
plot "graph_haystack/graph_haystack30_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack30_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack31_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 34)'
plot "graph_haystack/graph_haystack31_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack31_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack32_diversity.png"
set title 'Needle in a haystack (PopSize: 36)'
plot "graph_haystack/graph_haystack32_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack32_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack33_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 36)'
plot "graph_haystack/graph_haystack33_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack33_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack34_diversity.png"
set title 'Needle in a haystack (PopSize: 38)'
plot "graph_haystack/graph_haystack34_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack34_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack35_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 38)'
plot "graph_haystack/graph_haystack35_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack35_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack36_diversity.png"
set title 'Needle in a haystack (PopSize: 40)'
plot "graph_haystack/graph_haystack36_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack36_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack37_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 40)'
plot "graph_haystack/graph_haystack37_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack37_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack38_diversity.png"
set title 'Needle in a haystack (PopSize: 42)'
plot "graph_haystack/graph_haystack38_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack38_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack39_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 42)'
plot "graph_haystack/graph_haystack39_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack39_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack40_diversity.png"
set title 'Needle in a haystack (PopSize: 44)'
plot "graph_haystack/graph_haystack40_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack40_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack41_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 44)'
plot "graph_haystack/graph_haystack41_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack41_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack42_diversity.png"
set title 'Needle in a haystack (PopSize: 46)'
plot "graph_haystack/graph_haystack42_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack42_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack43_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 46)'
plot "graph_haystack/graph_haystack43_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack43_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack44_diversity.png"
set title 'Needle in a haystack (PopSize: 48)'
plot "graph_haystack/graph_haystack44_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack44_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack45_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 48)'
plot "graph_haystack/graph_haystack45_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack45_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack46_diversity.png"
set title 'Needle in a haystack (PopSize: 50)'
plot "graph_haystack/graph_haystack46_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack46_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack47_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 50)'
plot "graph_haystack/graph_haystack47_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack47_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack48_diversity.png"
set title 'Needle in a haystack (PopSize: 52)'
plot "graph_haystack/graph_haystack48_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack48_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2

set output "graph_haystack/graph_haystack49_diversity.png"
set title 'Needle in a haystack (Exact Random Distribution, PopSize: 52)'
plot "graph_haystack/graph_haystack49_diversity.gnp" ti "Test" with lines ls 1, "graph_haystack/graph_haystack49_diversity_quartil.gnp" ti "Test 1/4 and 3/4 quartil" with lines ls 2



