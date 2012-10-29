set boxwidth 0.75 absolute
set style fill solid 1.00 border -1
set style histogram rowstacked
set style data histograms
set xtics 1000 nomirror
set ytics 100 nomirror
set mxtics 2
set title "distribution plot"
set ylabel "Y axis"
set xlabel "X axis"
set xrange[-0.50:50.50]
set yrange[0:0.37]
plot for [COL=2:4] 'output1.dat' using COL:xticlabels(1) title columnheader