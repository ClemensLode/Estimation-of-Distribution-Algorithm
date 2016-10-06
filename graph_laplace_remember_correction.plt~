set style line 2 lt 2 lw 1
set style line 1 lt 1 lw 1
set xrange [0.0:1.0]
set yrange [0.0:1.0]
set zrange [0.0:1.0]
set hidden3d
set isosamples 40
set size ratio 1
set xlabel 'p'
set ylabel 'q'
set zlabel 'oldp'
set terminal png size 400,400
set key right bottom
set output "graph_correction/graph_laplace_remember_correction.png"
splot "graph_correction/graph_laplace_remember_correction.gnp" ti "Corrected distribution", "graph_correction/tgraph_laplace_remember_correction.gnp" ti "No correction"

