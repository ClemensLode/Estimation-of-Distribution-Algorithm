set style line 1 lt 1 lw 3
set style line 2 lt 2 lw 3
set style line 3 lt 3 lw 3

set xlabel 'generation'
set ylabel 'fitness'
set terminal png size 500,350
set key right bottom
set output "graph_leading1163203817/graph_leading000_fitness.png"
plot "graph_leading1163203817/graph_leading0_fitness.gnp" ti "EDC+BC, b=0.02, sel=98%" with lines ls 1, "graph_leading1163203817/graph_leading1_fitness.gnp" ti "EDC+BC, b=0.02, sel=99%" with lines ls 2, "graph_leading1163203817/graph_leading2_fitness.gnp" ti "EDC+BC, b=0.02, sel=100%" with lines ls 3

set output "graph_leading1163203817/graph_leading001_fitness.png"
plot "graph_leading1163203817/graph_leading3_fitness.gnp" ti "EDC+BC, b=0.02, sel=98%" with lines ls 1, "graph_leading1163203817/graph_leading4_fitness.gnp" ti "EDC+BC, b=0.02, sel=99%" with lines ls 2, "graph_leading1163203817/graph_leading5_fitness.gnp" ti "EDC+BC, b=0.02, sel=100%" with lines ls 3



set xlabel 'generation'
set ylabel 'diversity'
set terminal png size 500,350

set output "graph_leading1163203817/graph_leading000_diversity.png"
plot "graph_leading1163203817/graph_leading0_diversity.gnp" ti "EDC+BC, b=0.02, sel=98%" with lines ls 1, "graph_leading1163203817/graph_leading1_diversity.gnp" ti "EDC+BC, b=0.02, sel=99%" with lines ls 2, "graph_leading1163203817/graph_leading2_diversity.gnp" ti "EDC+BC, b=0.02, sel=100%" with lines ls 3

set output "graph_leading1163203817/graph_leading001_diversity.png"
plot "graph_leading1163203817/graph_leading3_diversity.gnp" ti "EDC+BC, b=0.02, sel=98%" with lines ls 1, "graph_leading1163203817/graph_leading4_diversity.gnp" ti "EDC+BC, b=0.02, sel=99%" with lines ls 2, "graph_leading1163203817/graph_leading5_diversity.gnp" ti "EDC+BC, b=0.02, sel=100%" with lines ls 3



