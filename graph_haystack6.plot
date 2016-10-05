set xlabel 'generation'
set ylabel 'fitness'
set terminal png large size 750,500
set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 1 lw 1
set style line 4 lt 2 lw 1

set output "graph_haystack/graph_haystack0.png"
set title 'Needle in a haystack (PopSize: 34)'
plot "graph_haystack/graph_haystack0.gnp" ti "Laplace" with lines ls 1, "graph_haystack/graph_haystack3.gnp" ti "Corrected distribution" with lines ls 2, "graph_haystack/graph_haystack0_quartil.gnp" ti "Laplace 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack3_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 4
set output "graph_haystack/graph_haystack1.png"
set title 'Needle in a haystack (PopSize: 867)'
plot "graph_haystack/graph_haystack1.gnp" ti "Laplace" with lines ls 1, "graph_haystack/graph_haystack4.gnp" ti "Corrected distribution" with lines ls 2, "graph_haystack/graph_haystack1_quartil.gnp" ti "Laplace 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack4_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 4
set output "graph_haystack/graph_haystack2.png"
set title 'Needle in a haystack (PopSize: 1700)'
plot "graph_haystack/graph_haystack2.gnp" ti "Laplace" with lines ls 1, "graph_haystack/graph_haystack5.gnp" ti "Corrected distribution" with lines ls 2, "graph_haystack/graph_haystack2_quartil.gnp" ti "Laplace 1/4 and 3/4 quartil" with lines ls 3, "graph_haystack/graph_haystack5_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 4
