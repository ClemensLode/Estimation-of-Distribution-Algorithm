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
set output "graph_nk1163198367/graph_nk000_fitness.png"
plot "graph_nk1163198367/graph_nk0_fitness.gnp" ti "EDC, sel=20%" with lines ls 1, "graph_nk1163198367/graph_nk1_fitness.gnp" ti "EDC, sel=30%" with lines ls 2, "graph_nk1163198367/graph_nk2_fitness.gnp" ti "EDC, sel=40%" with lines ls 3, "graph_nk1163198367/graph_nk3_fitness.gnp" ti "EDC, sel=50%" with lines ls 4, "graph_nk1163198367/graph_nk4_fitness.gnp" ti "EDC, sel=60%" with lines ls 5, "graph_nk1163198367/graph_nk5_fitness.gnp" ti "EDC, sel=70%" with lines ls 6, "graph_nk1163198367/graph_nk6_fitness.gnp" ti "EDC, sel=80%" with lines ls 7

set output "graph_nk1163198367/graph_nk001_fitness.png"
plot "graph_nk1163198367/graph_nk7_fitness.gnp" ti "EDC, sel=20%" with lines ls 1, "graph_nk1163198367/graph_nk8_fitness.gnp" ti "EDC, sel=30%" with lines ls 2, "graph_nk1163198367/graph_nk9_fitness.gnp" ti "EDC, sel=40%" with lines ls 3, "graph_nk1163198367/graph_nk10_fitness.gnp" ti "EDC, sel=50%" with lines ls 4, "graph_nk1163198367/graph_nk11_fitness.gnp" ti "EDC, sel=60%" with lines ls 5, "graph_nk1163198367/graph_nk12_fitness.gnp" ti "EDC, sel=70%" with lines ls 6, "graph_nk1163198367/graph_nk13_fitness.gnp" ti "EDC, sel=80%" with lines ls 7



set xlabel 'generation'
set ylabel 'diversity'
set terminal png size 500,350

set output "graph_nk1163198367/graph_nk000_diversity.png"
plot "graph_nk1163198367/graph_nk0_diversity.gnp" ti "EDC, sel=20%" with lines ls 1, "graph_nk1163198367/graph_nk1_diversity.gnp" ti "EDC, sel=30%" with lines ls 2, "graph_nk1163198367/graph_nk2_diversity.gnp" ti "EDC, sel=40%" with lines ls 3, "graph_nk1163198367/graph_nk3_diversity.gnp" ti "EDC, sel=50%" with lines ls 4, "graph_nk1163198367/graph_nk4_diversity.gnp" ti "EDC, sel=60%" with lines ls 5, "graph_nk1163198367/graph_nk5_diversity.gnp" ti "EDC, sel=70%" with lines ls 6, "graph_nk1163198367/graph_nk6_diversity.gnp" ti "EDC, sel=80%" with lines ls 7

set output "graph_nk1163198367/graph_nk001_diversity.png"
plot "graph_nk1163198367/graph_nk7_diversity.gnp" ti "EDC, sel=20%" with lines ls 1, "graph_nk1163198367/graph_nk8_diversity.gnp" ti "EDC, sel=30%" with lines ls 2, "graph_nk1163198367/graph_nk9_diversity.gnp" ti "EDC, sel=40%" with lines ls 3, "graph_nk1163198367/graph_nk10_diversity.gnp" ti "EDC, sel=50%" with lines ls 4, "graph_nk1163198367/graph_nk11_diversity.gnp" ti "EDC, sel=60%" with lines ls 5, "graph_nk1163198367/graph_nk12_diversity.gnp" ti "EDC, sel=70%" with lines ls 6, "graph_nk1163198367/graph_nk13_diversity.gnp" ti "EDC, sel=80%" with lines ls 7



