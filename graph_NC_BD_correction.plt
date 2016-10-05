set style line 2 lt 2 lw 1
set style line 1 lt 1 lw 3
set xrange [0.0:1.0]
set yrange [0.0:1.0]
set size ratio 1
set xlabel 'p'
set ylabel 'q'
set terminal png size 400,400
set key right bottom
set output "graph_correction/graph_NC_BD_correction.png"
set title 'No correction + bounded (PopSize: 10)'
plot "graph_correction/graph_NC_BD_correction.gnp" ti "Corrected distribution" with lines ls 1, "graph_correction/tgraph_NC_BD_correction.gnp" ti "No correction" with lines ls 2

