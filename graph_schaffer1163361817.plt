set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 4 lw 3

set xlabel 'generation'
set ylabel 'fitness'
set terminal png size 500,350
set key right bottom
set output "graph_schaffer1163361817/graph_schaffer000_fitness.png"
plot "graph_schaffer1163361817/graph_schaffer0_fitness.gnp" ti "ED+BC, b=0.01" with lines ls 1, "graph_schaffer1163361817/graph_schaffer1_fitness.gnp" ti "ED+LRC+BC, a=0.5, b=0.01" with lines ls 2, "graph_schaffer1163361817/graph_schaffer2_fitness.gnp" ti "EDC+BC, b=0.01" with lines ls 3, "graph_schaffer1163361817/graph_schaffer3_fitness.gnp" ti "EDC+LRC+BC, a=0.5, b=0.01" with lines ls 4



set xlabel 'generation'
set ylabel 'diversity'
set terminal png size 500,350

set output "graph_schaffer1163361817/graph_schaffer000_diversity.png"
plot "graph_schaffer1163361817/graph_schaffer0_diversity.gnp" ti "ED+BC, b=0.01" with lines ls 1, "graph_schaffer1163361817/graph_schaffer1_diversity.gnp" ti "ED+LRC+BC, a=0.5, b=0.01" with lines ls 2, "graph_schaffer1163361817/graph_schaffer2_diversity.gnp" ti "EDC+BC, b=0.01" with lines ls 3, "graph_schaffer1163361817/graph_schaffer3_diversity.gnp" ti "EDC+LRC+BC, a=0.5, b=0.01" with lines ls 4



