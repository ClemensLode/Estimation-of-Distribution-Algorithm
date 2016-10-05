set style line 1 lt 1 lw 3
set xlabel 'Number of 1s'
set ylabel 'fitness'
set terminal png size 500,350
set key right bottom
set output "graph_onemax2_fitness_landscape.png"
set title 'OneMax two peaks fitness landscape (alpha = 1.2)'
plot "graph_onemax2_fitness_landscape.gnp" ti "fitness graph" with lines ls 1

