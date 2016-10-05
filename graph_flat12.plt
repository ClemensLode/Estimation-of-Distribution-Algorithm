set xlabel 'generation'
set ylabel 'fitness'
set terminal png large size 750,500
set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 1 lw 1
set style line 5 lt 2 lw 1
set style line 6 lt 3 lw 1

set xlabel 'generation'
set ylabel 'diversity p*(1-p)'
set terminal png large size 750,500

set output "graph_flat/graph_flat000_diversity.png"
set title 'Flat fitness landscape (PopSize: 10, ProbSize: 100)'
plot "graph_flat/graph_flat0_diversity.gnp" ti "Exact random correction" with lines ls 1, "graph_flat/graph_flat1_diversity.gnp" ti "Corrected distribution" with lines ls 2, "graph_flat/graph_flat2_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 3

set output "graph_flat/graph_flat001_diversity.png"
set title 'Flat fitness landscape (Exact random distribution, PopSize: 10, ProbSize: 100)'
plot "graph_flat/graph_flat3_diversity.gnp" ti "Exact random correction" with lines ls 1, "graph_flat/graph_flat4_diversity.gnp" ti "Corrected distribution" with lines ls 2, "graph_flat/graph_flat5_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 3

set output "graph_flat/graph_flat002_diversity.png"
set title 'Flat fitness landscape (PopSize: 500, ProbSize: 100)'
plot "graph_flat/graph_flat6_diversity.gnp" ti "Exact random correction" with lines ls 1, "graph_flat/graph_flat7_diversity.gnp" ti "Corrected distribution" with lines ls 2, "graph_flat/graph_flat8_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 3

set output "graph_flat/graph_flat003_diversity.png"
set title 'Flat fitness landscape (Exact random distribution, PopSize: 500, ProbSize: 100)'
plot "graph_flat/graph_flat9_diversity.gnp" ti "Exact random correction" with lines ls 1, "graph_flat/graph_flat10_diversity.gnp" ti "Corrected distribution" with lines ls 2, "graph_flat/graph_flat11_diversity.gnp" ti "(1 - 1/N) loss / generation" with lines ls 3



