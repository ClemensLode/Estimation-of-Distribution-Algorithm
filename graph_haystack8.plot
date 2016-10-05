set xlabel 'generation'
set ylabel 'fitness'
set terminal png large size 750,500
set style line 1 lt 3 lw 3
set style line 2 lt 1 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 6 lw 3
set style line 5 lt 2 lw 3
set style line 6 lt 6 lw 3

set output "graph_haystack/graph_haystack0.png
set title 'Needle in a haystack (PopSize: 4)'
plot "graph_haystack/graph_haystack0.gnp" ti "Laplace" with lines ls 2, "graph_haystack/graph_haystack4.gnp" ti "Corrected distribution" with lines ls 5, "graph_haystack/graph_haystack0_q14.gnp" ti "Laplace 1/4 Quartil" with lines ls 1, "graph_haystack/graph_haystack4_q14.gnp" ti "Corrected distribution 1/4 Quartil" with lines ls 4, "graph_haystack/graph_haystack0_q34.gnp" ti "Laplace 3/4 Quartil" with lines ls 3, "graph_haystack/graph_haystack4_q34.gnp" ti "Corrected distribution 3/4 Quartil" with lines ls 6

set output "graph_haystack/graph_haystack1.png
set title 'Needle in a haystack (PopSize: 36)'
plot "graph_haystack/graph_haystack1.gnp" ti "Laplace" with lines ls 2, "graph_haystack/graph_haystack5.gnp" ti "Corrected distribution" with lines ls 5, "graph_haystack/graph_haystack1_q14.gnp" ti "Laplace 1/4 Quartil" with lines ls 1, "graph_haystack/graph_haystack5_q14.gnp" ti "Corrected distribution 1/4 Quartil" with lines ls 4, "graph_haystack/graph_haystack1_q34.gnp" ti "Laplace 3/4 Quartil" with lines ls 3, "graph_haystack/graph_haystack5_q34.gnp" ti "Corrected distribution 3/4 Quartil" with lines ls 6

set output "graph_haystack/graph_haystack2.png
set title 'Needle in a haystack (PopSize: 68)'
plot "graph_haystack/graph_haystack2.gnp" ti "Laplace" with lines ls 2, "graph_haystack/graph_haystack6.gnp" ti "Corrected distribution" with lines ls 5, "graph_haystack/graph_haystack2_q14.gnp" ti "Laplace 1/4 Quartil" with lines ls 1, "graph_haystack/graph_haystack6_q14.gnp" ti "Corrected distribution 1/4 Quartil" with lines ls 4, "graph_haystack/graph_haystack2_q34.gnp" ti "Laplace 3/4 Quartil" with lines ls 3, "graph_haystack/graph_haystack6_q34.gnp" ti "Corrected distribution 3/4 Quartil" with lines ls 6

set output "graph_haystack/graph_haystack3.png
set title 'Needle in a haystack (PopSize: 100)'
plot "graph_haystack/graph_haystack3.gnp" ti "Laplace" with lines ls 2, "graph_haystack/graph_haystack7.gnp" ti "Corrected distribution" with lines ls 5, "graph_haystack/graph_haystack3_q14.gnp" ti "Laplace 1/4 Quartil" with lines ls 1, "graph_haystack/graph_haystack7_q14.gnp" ti "Corrected distribution 1/4 Quartil" with lines ls 4, "graph_haystack/graph_haystack3_q34.gnp" ti "Laplace 3/4 Quartil" with lines ls 3, "graph_haystack/graph_haystack7_q34.gnp" ti "Corrected distribution 3/4 Quartil" with lines ls 6

