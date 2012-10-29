set title "random vectors distribution"
set ylabel "Y axis"
set xlabel "X axis"
set key invert reverse Left outside
set key autotitle columnheader
set auto x
unset xtics
set xtics 1000 nomirror
set mxtics 2
set style data histogram
set style histogram rowstacked
set style fill solid border -1
set boxwidth 0.75
set xrange[-0.50:50.50]
set yrange[0:250]
plot for [COL=1:12] 'output2.dat' using COL