set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 4 lw 3
set style line 5 lt 5 lw 3
set style line 6 lt 6 lw 3
set style line 7 lt 7 lw 3
set style line 8 lt 8 lw 3

set xlabel 'generation'
set ylabel 'fitness'
set terminal png size 500,350
set key right bottom
set output "graph_plateau1161105168/graph_plateau000_fitness.png"
set title 'Plateau function (PopSize: 10)'
plot "graph_plateau1161105168/graph_plateau0_fitness.gnp" ti "NoC" with lines ls 1, "graph_plateau1161105168/graph_plateau1_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_plateau1161105168/graph_plateau2_fitness.gnp" ti "EDC+ERD" with lines ls 3, "graph_plateau1161105168/graph_plateau3_fitness.gnp" ti "LC" with lines ls 4, "graph_plateau1161105168/graph_plateau4_fitness.gnp" ti "LC+ERD" with lines ls 5, "graph_plateau1161105168/graph_plateau5_fitness.gnp" ti "LRC" with lines ls 6, "graph_plateau1161105168/graph_plateau6_fitness.gnp" ti "LRC+bd" with lines ls 7, "graph_plateau1161105168/graph_plateau7_fitness.gnp" ti "CD" with lines ls 8

set output "graph_plateau1161105168/graph_plateau001_fitness.png"
set title 'Plateau function (PopSize: 10)'
plot "graph_plateau1161105168/graph_plateau8_fitness.gnp" ti "NoC" with lines ls 1, "graph_plateau1161105168/graph_plateau9_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_plateau1161105168/graph_plateau10_fitness.gnp" ti "EDC+ERD" with lines ls 3, "graph_plateau1161105168/graph_plateau11_fitness.gnp" ti "LC" with lines ls 4, "graph_plateau1161105168/graph_plateau12_fitness.gnp" ti "LC+ERD" with lines ls 5, "graph_plateau1161105168/graph_plateau13_fitness.gnp" ti "LRC" with lines ls 6, "graph_plateau1161105168/graph_plateau14_fitness.gnp" ti "LRC+bd" with lines ls 7, "graph_plateau1161105168/graph_plateau15_fitness.gnp" ti "CD" with lines ls 8

set output "graph_plateau1161105168/graph_plateau002_fitness.png"
set title 'Plateau function (PopSize: 50)'
plot "graph_plateau1161105168/graph_plateau16_fitness.gnp" ti "NoC" with lines ls 1, "graph_plateau1161105168/graph_plateau17_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_plateau1161105168/graph_plateau18_fitness.gnp" ti "EDC+ERD" with lines ls 3, "graph_plateau1161105168/graph_plateau19_fitness.gnp" ti "LC" with lines ls 4, "graph_plateau1161105168/graph_plateau20_fitness.gnp" ti "LC+ERD" with lines ls 5, "graph_plateau1161105168/graph_plateau21_fitness.gnp" ti "LRC" with lines ls 6, "graph_plateau1161105168/graph_plateau22_fitness.gnp" ti "LRC+bd" with lines ls 7, "graph_plateau1161105168/graph_plateau23_fitness.gnp" ti "CD" with lines ls 8

set output "graph_plateau1161105168/graph_plateau003_fitness.png"
set title 'Plateau function (PopSize: 50)'
plot "graph_plateau1161105168/graph_plateau24_fitness.gnp" ti "NoC" with lines ls 1, "graph_plateau1161105168/graph_plateau25_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_plateau1161105168/graph_plateau26_fitness.gnp" ti "EDC+ERD" with lines ls 3, "graph_plateau1161105168/graph_plateau27_fitness.gnp" ti "LC" with lines ls 4, "graph_plateau1161105168/graph_plateau28_fitness.gnp" ti "LC+ERD" with lines ls 5, "graph_plateau1161105168/graph_plateau29_fitness.gnp" ti "LRC" with lines ls 6, "graph_plateau1161105168/graph_plateau30_fitness.gnp" ti "LRC+bd" with lines ls 7, "graph_plateau1161105168/graph_plateau31_fitness.gnp" ti "CD" with lines ls 8



set xlabel 'generation'
set ylabel 'diversity p(1-p)'
set terminal png size 500,350

set output "graph_plateau1161105168/graph_plateau000_diversity.png"
set title 'Plateau function (PopSize: 10)'
plot "graph_plateau1161105168/graph_plateau0_diversity.gnp" ti "NoC" with lines ls 1, "graph_plateau1161105168/graph_plateau1_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_plateau1161105168/graph_plateau2_diversity.gnp" ti "EDC+ERD" with lines ls 3, "graph_plateau1161105168/graph_plateau3_diversity.gnp" ti "LC" with lines ls 4, "graph_plateau1161105168/graph_plateau4_diversity.gnp" ti "LC+ERD" with lines ls 5, "graph_plateau1161105168/graph_plateau5_diversity.gnp" ti "LRC" with lines ls 6, "graph_plateau1161105168/graph_plateau6_diversity.gnp" ti "LRC+bd" with lines ls 7, "graph_plateau1161105168/graph_plateau7_diversity.gnp" ti "CD" with lines ls 8

set output "graph_plateau1161105168/graph_plateau001_diversity.png"
set title 'Plateau function (PopSize: 10)'
plot "graph_plateau1161105168/graph_plateau8_diversity.gnp" ti "NoC" with lines ls 1, "graph_plateau1161105168/graph_plateau9_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_plateau1161105168/graph_plateau10_diversity.gnp" ti "EDC+ERD" with lines ls 3, "graph_plateau1161105168/graph_plateau11_diversity.gnp" ti "LC" with lines ls 4, "graph_plateau1161105168/graph_plateau12_diversity.gnp" ti "LC+ERD" with lines ls 5, "graph_plateau1161105168/graph_plateau13_diversity.gnp" ti "LRC" with lines ls 6, "graph_plateau1161105168/graph_plateau14_diversity.gnp" ti "LRC+bd" with lines ls 7, "graph_plateau1161105168/graph_plateau15_diversity.gnp" ti "CD" with lines ls 8

set output "graph_plateau1161105168/graph_plateau002_diversity.png"
set title 'Plateau function (PopSize: 50)'
plot "graph_plateau1161105168/graph_plateau16_diversity.gnp" ti "NoC" with lines ls 1, "graph_plateau1161105168/graph_plateau17_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_plateau1161105168/graph_plateau18_diversity.gnp" ti "EDC+ERD" with lines ls 3, "graph_plateau1161105168/graph_plateau19_diversity.gnp" ti "LC" with lines ls 4, "graph_plateau1161105168/graph_plateau20_diversity.gnp" ti "LC+ERD" with lines ls 5, "graph_plateau1161105168/graph_plateau21_diversity.gnp" ti "LRC" with lines ls 6, "graph_plateau1161105168/graph_plateau22_diversity.gnp" ti "LRC+bd" with lines ls 7, "graph_plateau1161105168/graph_plateau23_diversity.gnp" ti "CD" with lines ls 8

set output "graph_plateau1161105168/graph_plateau003_diversity.png"
set title 'Plateau function (PopSize: 50)'
plot "graph_plateau1161105168/graph_plateau24_diversity.gnp" ti "NoC" with lines ls 1, "graph_plateau1161105168/graph_plateau25_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_plateau1161105168/graph_plateau26_diversity.gnp" ti "EDC+ERD" with lines ls 3, "graph_plateau1161105168/graph_plateau27_diversity.gnp" ti "LC" with lines ls 4, "graph_plateau1161105168/graph_plateau28_diversity.gnp" ti "LC+ERD" with lines ls 5, "graph_plateau1161105168/graph_plateau29_diversity.gnp" ti "LRC" with lines ls 6, "graph_plateau1161105168/graph_plateau30_diversity.gnp" ti "LRC+bd" with lines ls 7, "graph_plateau1161105168/graph_plateau31_diversity.gnp" ti "CD" with lines ls 8



