set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3
set style line 4 lt 4 lw 3
set style line 5 lt 5 lw 3
set style line 6 lt 6 lw 3

set xlabel 'generation'
set ylabel 'fitness'
set terminal png size 500,350
set key right bottom
set output "graph_leading1163213951/graph_leading000_fitness.png"
plot "graph_leading1163213951/graph_leading0_fitness.gnp" ti "RD+LC, a=0" with lines ls 1, "graph_leading1163213951/graph_leading1_fitness.gnp" ti "RD+LC, a=0.04" with lines ls 2, "graph_leading1163213951/graph_leading2_fitness.gnp" ti "RD+LC, a=0.08" with lines ls 3, "graph_leading1163213951/graph_leading3_fitness.gnp" ti "RD+LC, a=0.12" with lines ls 4, "graph_leading1163213951/graph_leading4_fitness.gnp" ti "RD+LC, a=0.16" with lines ls 5, "graph_leading1163213951/graph_leading5_fitness.gnp" ti "RD+LC, a=0.2" with lines ls 6



set xlabel 'generation'
set ylabel 'diversity'
set terminal png size 500,350

set output "graph_leading1163213951/graph_leading000_diversity.png"
plot "graph_leading1163213951/graph_leading0_diversity.gnp" ti "RD+LC, a=0" with lines ls 1, "graph_leading1163213951/graph_leading1_diversity.gnp" ti "RD+LC, a=0.04" with lines ls 2, "graph_leading1163213951/graph_leading2_diversity.gnp" ti "RD+LC, a=0.08" with lines ls 3, "graph_leading1163213951/graph_leading3_diversity.gnp" ti "RD+LC, a=0.12" with lines ls 4, "graph_leading1163213951/graph_leading4_diversity.gnp" ti "RD+LC, a=0.16" with lines ls 5, "graph_leading1163213951/graph_leading5_diversity.gnp" ti "RD+LC, a=0.2" with lines ls 6



