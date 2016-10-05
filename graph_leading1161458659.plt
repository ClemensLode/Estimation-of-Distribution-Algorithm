set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 4 lw 3
set style line 5 lt 5 lw 3

set xlabel 'generation'
set ylabel 'fitness'
set terminal png size 500,350
set key right bottom
set output "graph_leading1161458659/graph_leading000_fitness.png"
set title 'Leading 1s (alpha = 0.5, PopSize: 10)'
plot "graph_leading1161458659/graph_leading0_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458659/graph_leading1_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458659/graph_leading2_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458659/graph_leading3_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458659/graph_leading4_fitness.gnp" ti "LRC" with lines ls 5

set output "graph_leading1161458659/graph_leading001_fitness.png"
set title 'Leading 1s (alpha = 1, PopSize: 10)'
plot "graph_leading1161458659/graph_leading5_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458659/graph_leading6_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458659/graph_leading7_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458659/graph_leading8_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458659/graph_leading9_fitness.gnp" ti "LRC" with lines ls 5

set output "graph_leading1161458659/graph_leading002_fitness.png"
set title 'Leading 1s (alpha = 1.5, PopSize: 10)'
plot "graph_leading1161458659/graph_leading10_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458659/graph_leading11_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458659/graph_leading12_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458659/graph_leading13_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458659/graph_leading14_fitness.gnp" ti "LRC" with lines ls 5

set output "graph_leading1161458659/graph_leading003_fitness.png"
set title 'Leading 1s (alpha = 0.5, PopSize: 50)'
plot "graph_leading1161458659/graph_leading15_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458659/graph_leading16_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458659/graph_leading17_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458659/graph_leading18_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458659/graph_leading19_fitness.gnp" ti "LRC" with lines ls 5

set output "graph_leading1161458659/graph_leading004_fitness.png"
set title 'Leading 1s (alpha = 1, PopSize: 50)'
plot "graph_leading1161458659/graph_leading20_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458659/graph_leading21_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458659/graph_leading22_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458659/graph_leading23_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458659/graph_leading24_fitness.gnp" ti "LRC" with lines ls 5

set output "graph_leading1161458659/graph_leading005_fitness.png"
set title 'Leading 1s (alpha = 1.5, PopSize: 50)'
plot "graph_leading1161458659/graph_leading25_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458659/graph_leading26_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458659/graph_leading27_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458659/graph_leading28_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458659/graph_leading29_fitness.gnp" ti "LRC" with lines ls 5



set xlabel 'generation'
set ylabel 'diversity p(1-p)'
set terminal png size 500,350

set output "graph_leading1161458659/graph_leading000_diversity.png"
set title 'Leading 1s (alpha = 0.5, PopSize: 10)'
plot "graph_leading1161458659/graph_leading0_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458659/graph_leading1_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458659/graph_leading2_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458659/graph_leading3_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458659/graph_leading4_diversity.gnp" ti "LRC" with lines ls 5

set output "graph_leading1161458659/graph_leading001_diversity.png"
set title 'Leading 1s (alpha = 1, PopSize: 10)'
plot "graph_leading1161458659/graph_leading5_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458659/graph_leading6_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458659/graph_leading7_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458659/graph_leading8_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458659/graph_leading9_diversity.gnp" ti "LRC" with lines ls 5

set output "graph_leading1161458659/graph_leading002_diversity.png"
set title 'Leading 1s (alpha = 1.5, PopSize: 10)'
plot "graph_leading1161458659/graph_leading10_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458659/graph_leading11_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458659/graph_leading12_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458659/graph_leading13_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458659/graph_leading14_diversity.gnp" ti "LRC" with lines ls 5

set output "graph_leading1161458659/graph_leading003_diversity.png"
set title 'Leading 1s (alpha = 0.5, PopSize: 50)'
plot "graph_leading1161458659/graph_leading15_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458659/graph_leading16_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458659/graph_leading17_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458659/graph_leading18_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458659/graph_leading19_diversity.gnp" ti "LRC" with lines ls 5

set output "graph_leading1161458659/graph_leading004_diversity.png"
set title 'Leading 1s (alpha = 1, PopSize: 50)'
plot "graph_leading1161458659/graph_leading20_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458659/graph_leading21_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458659/graph_leading22_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458659/graph_leading23_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458659/graph_leading24_diversity.gnp" ti "LRC" with lines ls 5

set output "graph_leading1161458659/graph_leading005_diversity.png"
set title 'Leading 1s (alpha = 1.5, PopSize: 50)'
plot "graph_leading1161458659/graph_leading25_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458659/graph_leading26_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458659/graph_leading27_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458659/graph_leading28_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458659/graph_leading29_diversity.gnp" ti "LRC" with lines ls 5



