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
set output "graph_leading1161458932/graph_leading000_fitness.png"
set title 'Leading 1s (alpha = 0.1, PopSize: 10)'
plot "graph_leading1161458932/graph_leading0_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading1_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading2_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading3_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading4_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading5_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading001_fitness.png"
set title 'Leading 1s (alpha = 0.2, PopSize: 10)'
plot "graph_leading1161458932/graph_leading6_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading7_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading8_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading9_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading10_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading11_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading002_fitness.png"
set title 'Leading 1s (alpha = 0.3, PopSize: 10)'
plot "graph_leading1161458932/graph_leading12_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading13_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading14_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading15_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading16_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading17_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading003_fitness.png"
set title 'Leading 1s (alpha = 0.4, PopSize: 10)'
plot "graph_leading1161458932/graph_leading18_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading19_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading20_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading21_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading22_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading23_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading004_fitness.png"
set title 'Leading 1s (alpha = 0.5, PopSize: 10)'
plot "graph_leading1161458932/graph_leading24_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading25_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading26_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading27_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading28_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading29_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading005_fitness.png"
set title 'Leading 1s (alpha = 0.6, PopSize: 10)'
plot "graph_leading1161458932/graph_leading30_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading31_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading32_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading33_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading34_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading35_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading006_fitness.png"
set title 'Leading 1s (alpha = 0.7, PopSize: 10)'
plot "graph_leading1161458932/graph_leading36_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading37_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading38_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading39_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading40_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading41_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading007_fitness.png"
set title 'Leading 1s (alpha = 0.8, PopSize: 10)'
plot "graph_leading1161458932/graph_leading42_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading43_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading44_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading45_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading46_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading47_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading008_fitness.png"
set title 'Leading 1s (alpha = 0.9, PopSize: 10)'
plot "graph_leading1161458932/graph_leading48_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading49_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading50_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading51_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading52_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading53_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading009_fitness.png"
set title 'Leading 1s (alpha = 1, PopSize: 10)'
plot "graph_leading1161458932/graph_leading54_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading55_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading56_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading57_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading58_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading59_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading010_fitness.png"
set title 'Leading 1s (alpha = 1.1, PopSize: 10)'
plot "graph_leading1161458932/graph_leading60_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading61_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading62_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading63_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading64_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading65_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading011_fitness.png"
set title 'Leading 1s (alpha = 1.2, PopSize: 10)'
plot "graph_leading1161458932/graph_leading66_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading67_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading68_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading69_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading70_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading71_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading012_fitness.png"
set title 'Leading 1s (alpha = 1.3, PopSize: 10)'
plot "graph_leading1161458932/graph_leading72_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading73_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading74_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading75_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading76_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading77_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading013_fitness.png"
set title 'Leading 1s (alpha = 1.4, PopSize: 10)'
plot "graph_leading1161458932/graph_leading78_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading79_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading80_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading81_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading82_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading83_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading014_fitness.png"
set title 'Leading 1s (alpha = 1.5, PopSize: 10)'
plot "graph_leading1161458932/graph_leading84_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading85_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading86_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading87_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading88_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading89_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading015_fitness.png"
set title 'Leading 1s (alpha = 1.6, PopSize: 10)'
plot "graph_leading1161458932/graph_leading90_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading91_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading92_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading93_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading94_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading95_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading016_fitness.png"
set title 'Leading 1s (alpha = 1.7, PopSize: 10)'
plot "graph_leading1161458932/graph_leading96_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading97_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading98_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading99_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading100_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading101_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading017_fitness.png"
set title 'Leading 1s (alpha = 1.8, PopSize: 10)'
plot "graph_leading1161458932/graph_leading102_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading103_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading104_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading105_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading106_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading107_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading018_fitness.png"
set title 'Leading 1s (alpha = 1.9, PopSize: 10)'
plot "graph_leading1161458932/graph_leading108_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading109_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading110_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading111_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading112_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading113_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading019_fitness.png"
set title 'Leading 1s (alpha = 0.1, PopSize: 50)'
plot "graph_leading1161458932/graph_leading114_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading115_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading116_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading117_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading118_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading119_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading020_fitness.png"
set title 'Leading 1s (alpha = 0.2, PopSize: 50)'
plot "graph_leading1161458932/graph_leading120_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading121_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading122_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading123_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading124_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading125_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading021_fitness.png"
set title 'Leading 1s (alpha = 0.3, PopSize: 50)'
plot "graph_leading1161458932/graph_leading126_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading127_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading128_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading129_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading130_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading131_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading022_fitness.png"
set title 'Leading 1s (alpha = 0.4, PopSize: 50)'
plot "graph_leading1161458932/graph_leading132_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading133_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading134_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading135_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading136_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading137_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading023_fitness.png"
set title 'Leading 1s (alpha = 0.5, PopSize: 50)'
plot "graph_leading1161458932/graph_leading138_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading139_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading140_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading141_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading142_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading143_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading024_fitness.png"
set title 'Leading 1s (alpha = 0.6, PopSize: 50)'
plot "graph_leading1161458932/graph_leading144_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading145_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading146_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading147_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading148_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading149_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading025_fitness.png"
set title 'Leading 1s (alpha = 0.7, PopSize: 50)'
plot "graph_leading1161458932/graph_leading150_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading151_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading152_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading153_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading154_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading155_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading026_fitness.png"
set title 'Leading 1s (alpha = 0.8, PopSize: 50)'
plot "graph_leading1161458932/graph_leading156_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading157_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading158_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading159_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading160_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading161_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading027_fitness.png"
set title 'Leading 1s (alpha = 0.9, PopSize: 50)'
plot "graph_leading1161458932/graph_leading162_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading163_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading164_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading165_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading166_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading167_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading028_fitness.png"
set title 'Leading 1s (alpha = 1, PopSize: 50)'
plot "graph_leading1161458932/graph_leading168_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading169_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading170_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading171_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading172_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading173_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading029_fitness.png"
set title 'Leading 1s (alpha = 1.1, PopSize: 50)'
plot "graph_leading1161458932/graph_leading174_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading175_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading176_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading177_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading178_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading179_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading030_fitness.png"
set title 'Leading 1s (alpha = 1.2, PopSize: 50)'
plot "graph_leading1161458932/graph_leading180_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading181_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading182_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading183_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading184_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading185_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading031_fitness.png"
set title 'Leading 1s (alpha = 1.3, PopSize: 50)'
plot "graph_leading1161458932/graph_leading186_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading187_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading188_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading189_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading190_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading191_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading032_fitness.png"
set title 'Leading 1s (alpha = 1.4, PopSize: 50)'
plot "graph_leading1161458932/graph_leading192_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading193_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading194_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading195_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading196_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading197_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading033_fitness.png"
set title 'Leading 1s (alpha = 1.5, PopSize: 50)'
plot "graph_leading1161458932/graph_leading198_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading199_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading200_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading201_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading202_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading203_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading034_fitness.png"
set title 'Leading 1s (alpha = 1.6, PopSize: 50)'
plot "graph_leading1161458932/graph_leading204_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading205_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading206_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading207_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading208_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading209_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading035_fitness.png"
set title 'Leading 1s (alpha = 1.7, PopSize: 50)'
plot "graph_leading1161458932/graph_leading210_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading211_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading212_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading213_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading214_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading215_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading036_fitness.png"
set title 'Leading 1s (alpha = 1.8, PopSize: 50)'
plot "graph_leading1161458932/graph_leading216_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading217_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading218_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading219_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading220_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading221_fitness.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading037_fitness.png"
set title 'Leading 1s (alpha = 1.9, PopSize: 50)'
plot "graph_leading1161458932/graph_leading222_fitness.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading223_fitness.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading224_fitness.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading225_fitness.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading226_fitness.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading227_fitness.gnp" ti "LRC+ERD" with lines ls 6



set xlabel 'generation'
set ylabel 'diversity p(1-p)'
set terminal png size 500,350

set output "graph_leading1161458932/graph_leading000_diversity.png"
set title 'Leading 1s (alpha = 0.1, PopSize: 10)'
plot "graph_leading1161458932/graph_leading0_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading1_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading2_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading3_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading4_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading5_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading001_diversity.png"
set title 'Leading 1s (alpha = 0.2, PopSize: 10)'
plot "graph_leading1161458932/graph_leading6_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading7_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading8_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading9_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading10_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading11_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading002_diversity.png"
set title 'Leading 1s (alpha = 0.3, PopSize: 10)'
plot "graph_leading1161458932/graph_leading12_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading13_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading14_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading15_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading16_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading17_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading003_diversity.png"
set title 'Leading 1s (alpha = 0.4, PopSize: 10)'
plot "graph_leading1161458932/graph_leading18_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading19_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading20_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading21_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading22_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading23_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading004_diversity.png"
set title 'Leading 1s (alpha = 0.5, PopSize: 10)'
plot "graph_leading1161458932/graph_leading24_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading25_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading26_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading27_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading28_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading29_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading005_diversity.png"
set title 'Leading 1s (alpha = 0.6, PopSize: 10)'
plot "graph_leading1161458932/graph_leading30_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading31_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading32_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading33_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading34_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading35_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading006_diversity.png"
set title 'Leading 1s (alpha = 0.7, PopSize: 10)'
plot "graph_leading1161458932/graph_leading36_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading37_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading38_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading39_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading40_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading41_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading007_diversity.png"
set title 'Leading 1s (alpha = 0.8, PopSize: 10)'
plot "graph_leading1161458932/graph_leading42_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading43_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading44_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading45_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading46_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading47_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading008_diversity.png"
set title 'Leading 1s (alpha = 0.9, PopSize: 10)'
plot "graph_leading1161458932/graph_leading48_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading49_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading50_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading51_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading52_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading53_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading009_diversity.png"
set title 'Leading 1s (alpha = 1, PopSize: 10)'
plot "graph_leading1161458932/graph_leading54_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading55_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading56_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading57_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading58_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading59_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading010_diversity.png"
set title 'Leading 1s (alpha = 1.1, PopSize: 10)'
plot "graph_leading1161458932/graph_leading60_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading61_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading62_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading63_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading64_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading65_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading011_diversity.png"
set title 'Leading 1s (alpha = 1.2, PopSize: 10)'
plot "graph_leading1161458932/graph_leading66_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading67_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading68_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading69_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading70_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading71_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading012_diversity.png"
set title 'Leading 1s (alpha = 1.3, PopSize: 10)'
plot "graph_leading1161458932/graph_leading72_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading73_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading74_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading75_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading76_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading77_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading013_diversity.png"
set title 'Leading 1s (alpha = 1.4, PopSize: 10)'
plot "graph_leading1161458932/graph_leading78_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading79_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading80_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading81_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading82_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading83_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading014_diversity.png"
set title 'Leading 1s (alpha = 1.5, PopSize: 10)'
plot "graph_leading1161458932/graph_leading84_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading85_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading86_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading87_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading88_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading89_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading015_diversity.png"
set title 'Leading 1s (alpha = 1.6, PopSize: 10)'
plot "graph_leading1161458932/graph_leading90_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading91_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading92_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading93_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading94_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading95_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading016_diversity.png"
set title 'Leading 1s (alpha = 1.7, PopSize: 10)'
plot "graph_leading1161458932/graph_leading96_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading97_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading98_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading99_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading100_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading101_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading017_diversity.png"
set title 'Leading 1s (alpha = 1.8, PopSize: 10)'
plot "graph_leading1161458932/graph_leading102_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading103_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading104_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading105_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading106_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading107_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading018_diversity.png"
set title 'Leading 1s (alpha = 1.9, PopSize: 10)'
plot "graph_leading1161458932/graph_leading108_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading109_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading110_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading111_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading112_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading113_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading019_diversity.png"
set title 'Leading 1s (alpha = 0.1, PopSize: 50)'
plot "graph_leading1161458932/graph_leading114_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading115_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading116_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading117_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading118_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading119_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading020_diversity.png"
set title 'Leading 1s (alpha = 0.2, PopSize: 50)'
plot "graph_leading1161458932/graph_leading120_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading121_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading122_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading123_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading124_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading125_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading021_diversity.png"
set title 'Leading 1s (alpha = 0.3, PopSize: 50)'
plot "graph_leading1161458932/graph_leading126_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading127_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading128_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading129_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading130_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading131_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading022_diversity.png"
set title 'Leading 1s (alpha = 0.4, PopSize: 50)'
plot "graph_leading1161458932/graph_leading132_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading133_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading134_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading135_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading136_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading137_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading023_diversity.png"
set title 'Leading 1s (alpha = 0.5, PopSize: 50)'
plot "graph_leading1161458932/graph_leading138_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading139_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading140_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading141_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading142_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading143_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading024_diversity.png"
set title 'Leading 1s (alpha = 0.6, PopSize: 50)'
plot "graph_leading1161458932/graph_leading144_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading145_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading146_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading147_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading148_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading149_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading025_diversity.png"
set title 'Leading 1s (alpha = 0.7, PopSize: 50)'
plot "graph_leading1161458932/graph_leading150_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading151_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading152_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading153_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading154_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading155_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading026_diversity.png"
set title 'Leading 1s (alpha = 0.8, PopSize: 50)'
plot "graph_leading1161458932/graph_leading156_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading157_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading158_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading159_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading160_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading161_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading027_diversity.png"
set title 'Leading 1s (alpha = 0.9, PopSize: 50)'
plot "graph_leading1161458932/graph_leading162_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading163_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading164_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading165_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading166_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading167_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading028_diversity.png"
set title 'Leading 1s (alpha = 1, PopSize: 50)'
plot "graph_leading1161458932/graph_leading168_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading169_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading170_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading171_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading172_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading173_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading029_diversity.png"
set title 'Leading 1s (alpha = 1.1, PopSize: 50)'
plot "graph_leading1161458932/graph_leading174_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading175_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading176_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading177_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading178_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading179_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading030_diversity.png"
set title 'Leading 1s (alpha = 1.2, PopSize: 50)'
plot "graph_leading1161458932/graph_leading180_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading181_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading182_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading183_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading184_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading185_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading031_diversity.png"
set title 'Leading 1s (alpha = 1.3, PopSize: 50)'
plot "graph_leading1161458932/graph_leading186_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading187_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading188_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading189_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading190_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading191_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading032_diversity.png"
set title 'Leading 1s (alpha = 1.4, PopSize: 50)'
plot "graph_leading1161458932/graph_leading192_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading193_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading194_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading195_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading196_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading197_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading033_diversity.png"
set title 'Leading 1s (alpha = 1.5, PopSize: 50)'
plot "graph_leading1161458932/graph_leading198_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading199_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading200_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading201_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading202_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading203_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading034_diversity.png"
set title 'Leading 1s (alpha = 1.6, PopSize: 50)'
plot "graph_leading1161458932/graph_leading204_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading205_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading206_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading207_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading208_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading209_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading035_diversity.png"
set title 'Leading 1s (alpha = 1.7, PopSize: 50)'
plot "graph_leading1161458932/graph_leading210_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading211_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading212_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading213_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading214_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading215_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading036_diversity.png"
set title 'Leading 1s (alpha = 1.8, PopSize: 50)'
plot "graph_leading1161458932/graph_leading216_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading217_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading218_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading219_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading220_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading221_diversity.gnp" ti "LRC+ERD" with lines ls 6

set output "graph_leading1161458932/graph_leading037_diversity.png"
set title 'Leading 1s (alpha = 1.9, PopSize: 50)'
plot "graph_leading1161458932/graph_leading222_diversity.gnp" ti "NoC" with lines ls 1, "graph_leading1161458932/graph_leading223_diversity.gnp" ti "NoC+ERD" with lines ls 2, "graph_leading1161458932/graph_leading224_diversity.gnp" ti "LC" with lines ls 3, "graph_leading1161458932/graph_leading225_diversity.gnp" ti "LC+ERD" with lines ls 4, "graph_leading1161458932/graph_leading226_diversity.gnp" ti "LRC" with lines ls 5, "graph_leading1161458932/graph_leading227_diversity.gnp" ti "LRC+ERD" with lines ls 6



