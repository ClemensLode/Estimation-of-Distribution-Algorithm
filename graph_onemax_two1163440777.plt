set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3

set xlabel 'generation'
set ylabel 'fitness'
set terminal png size 500,350
set key right bottom
set output "graph_onemax_two1163440777/graph_onemax_two000_fitness.png"
plot "graph_onemax_two1163440777/graph_onemax_two0_fitness.gnp" ti "ED+BC, b=0.01" with lines ls 1, "graph_onemax_two1163440777/graph_onemax_two1_fitness.gnp" ti "EDC+BC, b=0.01" with lines ls 2, "graph_onemax_two1163440777/graph_onemax_two2_fitness.gnp" ti "EDC+AV+BC, b=0.01, g=1" with lines ls 3



set xlabel 'generation'
set ylabel 'diversity'
set terminal png size 500,350

set output "graph_onemax_two1163440777/graph_onemax_two000_diversity.png"
plot "graph_onemax_two1163440777/graph_onemax_two0_diversity.gnp" ti "ED+BC, b=0.01" with lines ls 1, "graph_onemax_two1163440777/graph_onemax_two1_diversity.gnp" ti "EDC+BC, b=0.01" with lines ls 2, "graph_onemax_two1163440777/graph_onemax_two2_diversity.gnp" ti "EDC+AV+BC, b=0.01, g=1" with lines ls 3



