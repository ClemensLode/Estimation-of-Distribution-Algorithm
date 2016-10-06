set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 4 lw 3
set style line 5 lt 5 lw 3
set style line 6 lt 6 lw 3

set xlabel 'generation'
set ylabel 'diversity'
set terminal png size 500,350

set output "graph_flat1163449155/graph_flat000_diversity.png"
plot "graph_flat1163449155/graph_flat0_diversity.gnp" ti "RD+NoC" with lines ls 1, "graph_flat1163449155/graph_flat1_diversity.gnp" ti "ED+NoC" with lines ls 2, "graph_flat1163449155/graph_flat2_diversity.gnp" ti "RDC" with lines ls 3, "graph_flat1163449155/graph_flat3_diversity.gnp" ti "EDC" with lines ls 4, "graph_flat1163449155/graph_flat4_diversity.gnp" ti "(1-1/N) loss" with lines ls 5, "graph_flat1163449155/graph_flat5_diversity.gnp" ti "(M*(N-1)/(N*(M-1)) loss" with lines ls 6



