set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3

set xlabel 'generation'
set ylabel 'fitness'
set terminal png size 500,350
set key right bottom
set output "graph_haystack1163225165/graph_haystack000_fitness.png"
plot "graph_haystack1163225165/graph_haystack0_fitness.gnp" ti "ED+BC, b=0.02" with lines ls 1, "graph_haystack1163225165/graph_haystack1_fitness.gnp" ti "ED+LRC+BC, a=0.25, b=0.02" with lines ls 2, "graph_haystack1163225165/graph_haystack2_fitness.gnp" ti "EDC+BC, b=0.02" with lines ls 3



set xlabel 'generation'
set ylabel 'diversity'
set terminal png size 500,350

set output "graph_haystack1163225165/graph_haystack000_diversity.png"
plot "graph_haystack1163225165/graph_haystack0_diversity.gnp" ti "ED+BC, b=0.02" with lines ls 1, "graph_haystack1163225165/graph_haystack1_diversity.gnp" ti "ED+LRC+BC, a=0.25, b=0.02" with lines ls 2, "graph_haystack1163225165/graph_haystack2_diversity.gnp" ti "EDC+BC, b=0.02" with lines ls 3



