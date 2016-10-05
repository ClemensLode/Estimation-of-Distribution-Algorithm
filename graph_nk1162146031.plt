set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 4 lw 3
set style line 5 lt 5 lw 3
set style line 6 lt 6 lw 3
set style line 7 lt 7 lw 3
set style line 8 lt 8 lw 3
set style line 9 lt 9 lw 3
set style line 10 lt 10 lw 3

set xlabel 'generation'
set ylabel 'fitness'
set terminal png size 500,350
set key right bottom
set output "graph_nk1162146031/graph_nk000_fitness.png"
set title 'NK problem (PopSize: 50)'
plot "graph_nk1162146031/graph_nk0_fitness.gnp" ti "LC, a=0" with lines ls 1, "graph_nk1162146031/graph_nk1_fitness.gnp" ti "LC, a=0.05" with lines ls 2, "graph_nk1162146031/graph_nk2_fitness.gnp" ti "LC, a=0.1" with lines ls 3, "graph_nk1162146031/graph_nk3_fitness.gnp" ti "LC, a=0.15" with lines ls 4, "graph_nk1162146031/graph_nk4_fitness.gnp" ti "LC, a=0.2" with lines ls 5, "graph_nk1162146031/graph_nk5_fitness.gnp" ti "LC+ERD, a=0" with lines ls 6, "graph_nk1162146031/graph_nk6_fitness.gnp" ti "LC+ERD, a=0.05" with lines ls 7, "graph_nk1162146031/graph_nk7_fitness.gnp" ti "LC+ERD, a=0.1" with lines ls 8, "graph_nk1162146031/graph_nk8_fitness.gnp" ti "LC+ERD, a=0.15" with lines ls 9, "graph_nk1162146031/graph_nk9_fitness.gnp" ti "LC+ERD, a=0.2" with lines ls 10



set xlabel 'generation'
set ylabel 'diversity p(1-p)'
set terminal png size 500,350

set output "graph_nk1162146031/graph_nk000_diversity.png"
set title 'NK problem (PopSize: 50)'
plot "graph_nk1162146031/graph_nk0_diversity.gnp" ti "LC, a=0" with lines ls 1, "graph_nk1162146031/graph_nk1_diversity.gnp" ti "LC, a=0.05" with lines ls 2, "graph_nk1162146031/graph_nk2_diversity.gnp" ti "LC, a=0.1" with lines ls 3, "graph_nk1162146031/graph_nk3_diversity.gnp" ti "LC, a=0.15" with lines ls 4, "graph_nk1162146031/graph_nk4_diversity.gnp" ti "LC, a=0.2" with lines ls 5, "graph_nk1162146031/graph_nk5_diversity.gnp" ti "LC+ERD, a=0" with lines ls 6, "graph_nk1162146031/graph_nk6_diversity.gnp" ti "LC+ERD, a=0.05" with lines ls 7, "graph_nk1162146031/graph_nk7_diversity.gnp" ti "LC+ERD, a=0.1" with lines ls 8, "graph_nk1162146031/graph_nk8_diversity.gnp" ti "LC+ERD, a=0.15" with lines ls 9, "graph_nk1162146031/graph_nk9_diversity.gnp" ti "LC+ERD, a=0.2" with lines ls 10



