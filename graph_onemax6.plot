set xlabel 'generation'
set ylabel 'fitness'
set terminal png large size 750,500
set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 1 lw 1
set style line 4 lt 2 lw 1

set output "graph_onemax/graph_onemax0.png"
set title 'OneMax (PopSize: 50)'
plot "graph_onemax/graph_onemax0.gnp" ti "Laplace" with lines ls 1, "graph_onemax/graph_onemax3.gnp" ti "Corrected distribution" with lines ls 2, "graph_onemax/graph_onemax0_quartil.gnp" ti "Laplace 1/4 and 3/4 quartil" with lines ls 3, "graph_onemax/graph_onemax3_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 4
set output "graph_onemax/graph_onemax1.png"
set title 'OneMax (PopSize: 150)'
plot "graph_onemax/graph_onemax1.gnp" ti "Laplace" with lines ls 1, "graph_onemax/graph_onemax4.gnp" ti "Corrected distribution" with lines ls 2, "graph_onemax/graph_onemax1_quartil.gnp" ti "Laplace 1/4 and 3/4 quartil" with lines ls 3, "graph_onemax/graph_onemax4_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 4
set output "graph_onemax/graph_onemax2.png"
set title 'OneMax (PopSize: 250)'
plot "graph_onemax/graph_onemax2.gnp" ti "Laplace" with lines ls 1, "graph_onemax/graph_onemax5.gnp" ti "Corrected distribution" with lines ls 2, "graph_onemax/graph_onemax2_quartil.gnp" ti "Laplace 1/4 and 3/4 quartil" with lines ls 3, "graph_onemax/graph_onemax5_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 4
