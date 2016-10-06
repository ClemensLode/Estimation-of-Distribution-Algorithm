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
set output "graph_leading1163208885/graph_leading000_fitness.png"
plot "graph_leading1163208885/graph_leading0_fitness.gnp" ti "EDC, sel=20%" with lines ls 1, "graph_leading1163208885/graph_leading1_fitness.gnp" ti "EDC, sel=30%" with lines ls 2, "graph_leading1163208885/graph_leading2_fitness.gnp" ti "EDC, sel=40%" with lines ls 3, "graph_leading1163208885/graph_leading3_fitness.gnp" ti "EDC, sel=50%" with lines ls 4, "graph_leading1163208885/graph_leading4_fitness.gnp" ti "EDC, sel=60%" with lines ls 5, "graph_leading1163208885/graph_leading5_fitness.gnp" ti "EDC, sel=70%" with lines ls 6, "graph_leading1163208885/graph_leading6_fitness.gnp" ti "EDC, sel=80%" with lines ls 7

set output "graph_leading1163208885/graph_leading001_fitness.png"
plot "graph_leading1163208885/graph_leading7_fitness.gnp" ti "EDC, sel=20%" with lines ls 1, "graph_leading1163208885/graph_leading8_fitness.gnp" ti "EDC, sel=30%" with lines ls 2, "graph_leading1163208885/graph_leading9_fitness.gnp" ti "EDC, sel=40%" with lines ls 3, "graph_leading1163208885/graph_leading10_fitness.gnp" ti "EDC, sel=50%" with lines ls 4, "graph_leading1163208885/graph_leading11_fitness.gnp" ti "EDC, sel=60%" with lines ls 5, "graph_leading1163208885/graph_leading12_fitness.gnp" ti "EDC, sel=70%" with lines ls 6, "graph_leading1163208885/graph_leading13_fitness.gnp" ti "EDC, sel=80%" with lines ls 7



set xlabel 'generation'
set ylabel 'diversity'
set terminal png size 500,350

set output "graph_leading1163208885/graph_leading000_diversity.png"
plot "graph_leading1163208885/graph_leading0_diversity.gnp" ti "EDC, sel=20%" with lines ls 1, "graph_leading1163208885/graph_leading1_diversity.gnp" ti "EDC, sel=30%" with lines ls 2, "graph_leading1163208885/graph_leading2_diversity.gnp" ti "EDC, sel=40%" with lines ls 3, "graph_leading1163208885/graph_leading3_diversity.gnp" ti "EDC, sel=50%" with lines ls 4, "graph_leading1163208885/graph_leading4_diversity.gnp" ti "EDC, sel=60%" with lines ls 5, "graph_leading1163208885/graph_leading5_diversity.gnp" ti "EDC, sel=70%" with lines ls 6, "graph_leading1163208885/graph_leading6_diversity.gnp" ti "EDC, sel=80%" with lines ls 7

set output "graph_leading1163208885/graph_leading001_diversity.png"
plot "graph_leading1163208885/graph_leading7_diversity.gnp" ti "EDC, sel=20%" with lines ls 1, "graph_leading1163208885/graph_leading8_diversity.gnp" ti "EDC, sel=30%" with lines ls 2, "graph_leading1163208885/graph_leading9_diversity.gnp" ti "EDC, sel=40%" with lines ls 3, "graph_leading1163208885/graph_leading10_diversity.gnp" ti "EDC, sel=50%" with lines ls 4, "graph_leading1163208885/graph_leading11_diversity.gnp" ti "EDC, sel=60%" with lines ls 5, "graph_leading1163208885/graph_leading12_diversity.gnp" ti "EDC, sel=70%" with lines ls 6, "graph_leading1163208885/graph_leading13_diversity.gnp" ti "EDC, sel=80%" with lines ls 7



