set style line 1 lt 1 lw 3
set xlabel 'number of 1s'
set ylabel 'fitness'
set terminal png size 500,350
set key right bottom
set output "graph_onemax_fitness_landscape.png"
set title 'OneMax fitness landscape'
plot "graph_onemax_fitness_landscape.gnp" ti "fitness graph" with lines ls 1

