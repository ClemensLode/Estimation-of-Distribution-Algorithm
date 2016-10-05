set xlabel 'generation'
set ylabel 'fitness'
set terminal png large size 750,500
set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 1 lw 1
set style line 4 lt 2 lw 1

set output "graph_onemax/graph_onemax0.png"
set title 'OneMax (PopSize: 50)'
plot "graph_onemax/graph_onemax0.gnp" ti "Laplace" with lines ls 1, "graph_onemax/graph_onemax16.gnp" ti "Corrected distribution" with lines ls 2, "graph_onemax/graph_onemax0_quartil.gnp" ti "Laplace 1/4 and 3/4 quartil" with lines ls 3, "graph_onemax/graph_onemax16_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 4
set output "graph_onemax/graph_onemax1.png"
set title 'OneMax (Exact Random Distribution, PopSize: 50)'
plot "graph_onemax/graph_onemax1.gnp" ti "Laplace" with lines ls 1, "graph_onemax/graph_onemax17.gnp" ti "Corrected distribution" with lines ls 2, "graph_onemax/graph_onemax1_quartil.gnp" ti "Laplace 1/4 and 3/4 quartil" with lines ls 3, "graph_onemax/graph_onemax17_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 4
set output "graph_onemax/graph_onemax2.png"
set title 'OneMax (Remember Sampling Error, PopSize: 50)'
plot "graph_onemax/graph_onemax2.gnp" ti "Laplace" with lines ls 1, "graph_onemax/graph_onemax18.gnp" ti "Corrected distribution" with lines ls 2, "graph_onemax/graph_onemax2_quartil.gnp" ti "Laplace 1/4 and 3/4 quartil" with lines ls 3, "graph_onemax/graph_onemax18_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 4
set output "graph_onemax/graph_onemax3.png"
set title 'OneMax (Remember Sampling Error, Exact Random Distribution, PopSize: 50)'
plot "graph_onemax/graph_onemax3.gnp" ti "Laplace" with lines ls 1, "graph_onemax/graph_onemax19.gnp" ti "Corrected distribution" with lines ls 2, "graph_onemax/graph_onemax3_quartil.gnp" ti "Laplace 1/4 and 3/4 quartil" with lines ls 3, "graph_onemax/graph_onemax19_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 4
set output "graph_onemax/graph_onemax4.png"
set title 'OneMax (PopSize: 116)'
plot "graph_onemax/graph_onemax4.gnp" ti "Laplace" with lines ls 1, "graph_onemax/graph_onemax20.gnp" ti "Corrected distribution" with lines ls 2, "graph_onemax/graph_onemax4_quartil.gnp" ti "Laplace 1/4 and 3/4 quartil" with lines ls 3, "graph_onemax/graph_onemax20_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 4
set output "graph_onemax/graph_onemax5.png"
set title 'OneMax (Exact Random Distribution, PopSize: 116)'
plot "graph_onemax/graph_onemax5.gnp" ti "Laplace" with lines ls 1, "graph_onemax/graph_onemax21.gnp" ti "Corrected distribution" with lines ls 2, "graph_onemax/graph_onemax5_quartil.gnp" ti "Laplace 1/4 and 3/4 quartil" with lines ls 3, "graph_onemax/graph_onemax21_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 4
set output "graph_onemax/graph_onemax6.png"
set title 'OneMax (Remember Sampling Error, PopSize: 116)'
plot "graph_onemax/graph_onemax6.gnp" ti "Laplace" with lines ls 1, "graph_onemax/graph_onemax22.gnp" ti "Corrected distribution" with lines ls 2, "graph_onemax/graph_onemax6_quartil.gnp" ti "Laplace 1/4 and 3/4 quartil" with lines ls 3, "graph_onemax/graph_onemax22_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 4
set output "graph_onemax/graph_onemax7.png"
set title 'OneMax (Remember Sampling Error, Exact Random Distribution, PopSize: 116)'
plot "graph_onemax/graph_onemax7.gnp" ti "Laplace" with lines ls 1, "graph_onemax/graph_onemax23.gnp" ti "Corrected distribution" with lines ls 2, "graph_onemax/graph_onemax7_quartil.gnp" ti "Laplace 1/4 and 3/4 quartil" with lines ls 3, "graph_onemax/graph_onemax23_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 4
set output "graph_onemax/graph_onemax8.png"
set title 'OneMax (PopSize: 182)'
plot "graph_onemax/graph_onemax8.gnp" ti "Laplace" with lines ls 1, "graph_onemax/graph_onemax24.gnp" ti "Corrected distribution" with lines ls 2, "graph_onemax/graph_onemax8_quartil.gnp" ti "Laplace 1/4 and 3/4 quartil" with lines ls 3, "graph_onemax/graph_onemax24_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 4
set output "graph_onemax/graph_onemax9.png"
set title 'OneMax (Exact Random Distribution, PopSize: 182)'
plot "graph_onemax/graph_onemax9.gnp" ti "Laplace" with lines ls 1, "graph_onemax/graph_onemax25.gnp" ti "Corrected distribution" with lines ls 2, "graph_onemax/graph_onemax9_quartil.gnp" ti "Laplace 1/4 and 3/4 quartil" with lines ls 3, "graph_onemax/graph_onemax25_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 4
set output "graph_onemax/graph_onemax10.png"
set title 'OneMax (Remember Sampling Error, PopSize: 182)'
plot "graph_onemax/graph_onemax10.gnp" ti "Laplace" with lines ls 1, "graph_onemax/graph_onemax26.gnp" ti "Corrected distribution" with lines ls 2, "graph_onemax/graph_onemax10_quartil.gnp" ti "Laplace 1/4 and 3/4 quartil" with lines ls 3, "graph_onemax/graph_onemax26_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 4
set output "graph_onemax/graph_onemax11.png"
set title 'OneMax (Remember Sampling Error, Exact Random Distribution, PopSize: 182)'
plot "graph_onemax/graph_onemax11.gnp" ti "Laplace" with lines ls 1, "graph_onemax/graph_onemax27.gnp" ti "Corrected distribution" with lines ls 2, "graph_onemax/graph_onemax11_quartil.gnp" ti "Laplace 1/4 and 3/4 quartil" with lines ls 3, "graph_onemax/graph_onemax27_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 4
set output "graph_onemax/graph_onemax12.png"
set title 'OneMax (PopSize: 248)'
plot "graph_onemax/graph_onemax12.gnp" ti "Laplace" with lines ls 1, "graph_onemax/graph_onemax28.gnp" ti "Corrected distribution" with lines ls 2, "graph_onemax/graph_onemax12_quartil.gnp" ti "Laplace 1/4 and 3/4 quartil" with lines ls 3, "graph_onemax/graph_onemax28_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 4
set output "graph_onemax/graph_onemax13.png"
set title 'OneMax (Exact Random Distribution, PopSize: 248)'
plot "graph_onemax/graph_onemax13.gnp" ti "Laplace" with lines ls 1, "graph_onemax/graph_onemax29.gnp" ti "Corrected distribution" with lines ls 2, "graph_onemax/graph_onemax13_quartil.gnp" ti "Laplace 1/4 and 3/4 quartil" with lines ls 3, "graph_onemax/graph_onemax29_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 4
set output "graph_onemax/graph_onemax14.png"
set title 'OneMax (Remember Sampling Error, PopSize: 248)'
plot "graph_onemax/graph_onemax14.gnp" ti "Laplace" with lines ls 1, "graph_onemax/graph_onemax30.gnp" ti "Corrected distribution" with lines ls 2, "graph_onemax/graph_onemax14_quartil.gnp" ti "Laplace 1/4 and 3/4 quartil" with lines ls 3, "graph_onemax/graph_onemax30_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 4
set output "graph_onemax/graph_onemax15.png"
set title 'OneMax (Remember Sampling Error, Exact Random Distribution, PopSize: 248)'
plot "graph_onemax/graph_onemax15.gnp" ti "Laplace" with lines ls 1, "graph_onemax/graph_onemax31.gnp" ti "Corrected distribution" with lines ls 2, "graph_onemax/graph_onemax15_quartil.gnp" ti "Laplace 1/4 and 3/4 quartil" with lines ls 3, "graph_onemax/graph_onemax31_quartil.gnp" ti "Corrected distribution 1/4 and 3/4 quartil" with lines ls 4
