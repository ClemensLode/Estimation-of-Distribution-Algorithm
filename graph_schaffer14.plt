set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 4 lw 3
set style line 5 lt 5 lw 3
set style line 6 lt 6 lw 3
set style line 7 lt 7 lw 3

set xlabel 'generation'
set ylabel 'fitness'
set terminal png size 500,350
set key right bottom
set output "graph_schaffer/graph_schaffer000_fitness.png"
set title 'Schaffer F6 function (PopSize: 10)'
plot "graph_schaffer/graph_schaffer0_fitness.gnp" ti "NoC" with lines ls 1, "graph_schaffer/graph_schaffer1_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_schaffer/graph_schaffer2_fitness.gnp" ti "EDC+ERD" with lines ls 3, "graph_schaffer/graph_schaffer3_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_schaffer/graph_schaffer4_fitness.gnp" ti "LRC+ERD" with lines ls 5, "graph_schaffer/graph_schaffer5_fitness.gnp" ti "CD" with lines ls 6, "graph_schaffer/graph_schaffer6_fitness.gnp" ti "CD+ERD" with lines ls 7

set output "graph_schaffer/graph_schaffer001_fitness.png"
set title 'Schaffer F6 function (PopSize: 50)'
plot "graph_schaffer/graph_schaffer7_fitness.gnp" ti "NoC" with lines ls 1, "graph_schaffer/graph_schaffer8_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_schaffer/graph_schaffer9_fitness.gnp" ti "EDC+ERD" with lines ls 3, "graph_schaffer/graph_schaffer10_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_schaffer/graph_schaffer11_fitness.gnp" ti "LRC+ERD" with lines ls 5, "graph_schaffer/graph_schaffer12_fitness.gnp" ti "CD" with lines ls 6, "graph_schaffer/graph_schaffer13_fitness.gnp" ti "CD+ERD" with lines ls 7



set xlabel 'generation'
set ylabel 'diversity p(1-p)'
set terminal png size 500,350

set output "graph_schaffer/graph_schaffer000_diversity.png"
set title 'Schaffer F6 function (PopSize: 10)'
plot "graph_schaffer/graph_schaffer0_diversity.gnp" ti "NoC" with lines ls 1, "graph_schaffer/graph_schaffer1_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_schaffer/graph_schaffer2_diversity.gnp" ti "EDC+ERD" with lines ls 3, "graph_schaffer/graph_schaffer3_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_schaffer/graph_schaffer4_diversity.gnp" ti "LRC+ERD" with lines ls 5, "graph_schaffer/graph_schaffer5_diversity.gnp" ti "CD" with lines ls 6, "graph_schaffer/graph_schaffer6_diversity.gnp" ti "CD+ERD" with lines ls 7

set output "graph_schaffer/graph_schaffer001_diversity.png"
set title 'Schaffer F6 function (PopSize: 50)'
plot "graph_schaffer/graph_schaffer7_diversity.gnp" ti "NoC" with lines ls 1, "graph_schaffer/graph_schaffer8_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_schaffer/graph_schaffer9_diversity.gnp" ti "EDC+ERD" with lines ls 3, "graph_schaffer/graph_schaffer10_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_schaffer/graph_schaffer11_diversity.gnp" ti "LRC+ERD" with lines ls 5, "graph_schaffer/graph_schaffer12_diversity.gnp" ti "CD" with lines ls 6, "graph_schaffer/graph_schaffer13_diversity.gnp" ti "CD+ERD" with lines ls 7



