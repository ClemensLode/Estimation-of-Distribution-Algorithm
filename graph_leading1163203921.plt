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
set output "graph_leading1163203921/graph_leading000_fitness.png"
plot "graph_leading1163203921/graph_leading0_fitness.gnp" ti "EDC+BC, b=0.02, sel=75%" with lines ls 1, "graph_leading1163203921/graph_leading1_fitness.gnp" ti "EDC+BC, b=0.02, sel=77.7778%" with lines ls 2, "graph_leading1163203921/graph_leading2_fitness.gnp" ti "EDC+BC, b=0.02, sel=80.5556%" with lines ls 3, "graph_leading1163203921/graph_leading3_fitness.gnp" ti "EDC+BC, b=0.02, sel=83.3333%" with lines ls 4, "graph_leading1163203921/graph_leading4_fitness.gnp" ti "EDC+BC, b=0.02, sel=86.1111%" with lines ls 5, "graph_leading1163203921/graph_leading5_fitness.gnp" ti "EDC+BC, b=0.02, sel=88.8889%" with lines ls 6, "graph_leading1163203921/graph_leading6_fitness.gnp" ti "EDC+BC, b=0.02, sel=91.6667%" with lines ls 7, "graph_leading1163203921/graph_leading7_fitness.gnp" ti "EDC+BC, b=0.02, sel=94.4444%" with lines ls 8, "graph_leading1163203921/graph_leading8_fitness.gnp" ti "EDC+BC, b=0.02, sel=97.2222%" with lines ls 9, "graph_leading1163203921/graph_leading9_fitness.gnp" ti "EDC+BC, b=0.02, sel=100%" with lines ls 10

set output "graph_leading1163203921/graph_leading001_fitness.png"
plot "graph_leading1163203921/graph_leading10_fitness.gnp" ti "EDC+BC, b=0.02, sel=75%" with lines ls 1, "graph_leading1163203921/graph_leading11_fitness.gnp" ti "EDC+BC, b=0.02, sel=77.7778%" with lines ls 2, "graph_leading1163203921/graph_leading12_fitness.gnp" ti "EDC+BC, b=0.02, sel=80.5556%" with lines ls 3, "graph_leading1163203921/graph_leading13_fitness.gnp" ti "EDC+BC, b=0.02, sel=83.3333%" with lines ls 4, "graph_leading1163203921/graph_leading14_fitness.gnp" ti "EDC+BC, b=0.02, sel=86.1111%" with lines ls 5, "graph_leading1163203921/graph_leading15_fitness.gnp" ti "EDC+BC, b=0.02, sel=88.8889%" with lines ls 6, "graph_leading1163203921/graph_leading16_fitness.gnp" ti "EDC+BC, b=0.02, sel=91.6667%" with lines ls 7, "graph_leading1163203921/graph_leading17_fitness.gnp" ti "EDC+BC, b=0.02, sel=94.4444%" with lines ls 8, "graph_leading1163203921/graph_leading18_fitness.gnp" ti "EDC+BC, b=0.02, sel=97.2222%" with lines ls 9, "graph_leading1163203921/graph_leading19_fitness.gnp" ti "EDC+BC, b=0.02, sel=100%" with lines ls 10



set xlabel 'generation'
set ylabel 'diversity'
set terminal png size 500,350

set output "graph_leading1163203921/graph_leading000_diversity.png"
plot "graph_leading1163203921/graph_leading0_diversity.gnp" ti "EDC+BC, b=0.02, sel=75%" with lines ls 1, "graph_leading1163203921/graph_leading1_diversity.gnp" ti "EDC+BC, b=0.02, sel=77.7778%" with lines ls 2, "graph_leading1163203921/graph_leading2_diversity.gnp" ti "EDC+BC, b=0.02, sel=80.5556%" with lines ls 3, "graph_leading1163203921/graph_leading3_diversity.gnp" ti "EDC+BC, b=0.02, sel=83.3333%" with lines ls 4, "graph_leading1163203921/graph_leading4_diversity.gnp" ti "EDC+BC, b=0.02, sel=86.1111%" with lines ls 5, "graph_leading1163203921/graph_leading5_diversity.gnp" ti "EDC+BC, b=0.02, sel=88.8889%" with lines ls 6, "graph_leading1163203921/graph_leading6_diversity.gnp" ti "EDC+BC, b=0.02, sel=91.6667%" with lines ls 7, "graph_leading1163203921/graph_leading7_diversity.gnp" ti "EDC+BC, b=0.02, sel=94.4444%" with lines ls 8, "graph_leading1163203921/graph_leading8_diversity.gnp" ti "EDC+BC, b=0.02, sel=97.2222%" with lines ls 9, "graph_leading1163203921/graph_leading9_diversity.gnp" ti "EDC+BC, b=0.02, sel=100%" with lines ls 10

set output "graph_leading1163203921/graph_leading001_diversity.png"
plot "graph_leading1163203921/graph_leading10_diversity.gnp" ti "EDC+BC, b=0.02, sel=75%" with lines ls 1, "graph_leading1163203921/graph_leading11_diversity.gnp" ti "EDC+BC, b=0.02, sel=77.7778%" with lines ls 2, "graph_leading1163203921/graph_leading12_diversity.gnp" ti "EDC+BC, b=0.02, sel=80.5556%" with lines ls 3, "graph_leading1163203921/graph_leading13_diversity.gnp" ti "EDC+BC, b=0.02, sel=83.3333%" with lines ls 4, "graph_leading1163203921/graph_leading14_diversity.gnp" ti "EDC+BC, b=0.02, sel=86.1111%" with lines ls 5, "graph_leading1163203921/graph_leading15_diversity.gnp" ti "EDC+BC, b=0.02, sel=88.8889%" with lines ls 6, "graph_leading1163203921/graph_leading16_diversity.gnp" ti "EDC+BC, b=0.02, sel=91.6667%" with lines ls 7, "graph_leading1163203921/graph_leading17_diversity.gnp" ti "EDC+BC, b=0.02, sel=94.4444%" with lines ls 8, "graph_leading1163203921/graph_leading18_diversity.gnp" ti "EDC+BC, b=0.02, sel=97.2222%" with lines ls 9, "graph_leading1163203921/graph_leading19_diversity.gnp" ti "EDC+BC, b=0.02, sel=100%" with lines ls 10



