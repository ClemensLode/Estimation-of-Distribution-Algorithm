set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3

set xlabel 'generation'
set ylabel 'diversity'
set terminal png size 500,350

set output "graph_flat1163174282/graph_flat000_diversity.png"
plot "graph_flat1163174282/graph_flat0_diversity.gnp" ti "RD+NoC" with lines ls 1, "graph_flat1163174282/graph_flat1_diversity.gnp" ti "ED+NoC" with lines ls 2



