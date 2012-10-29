set key center top
set key box
set xzeroaxis lt -1
set yzeroaxis
set title "vector distribution" 
set xlabel "X-AXIS"
set ylabel "Y-AXIS"
set terminal postscript eps enhanced 
set output 'plots.eps'
plot 'output1.dat' using 1:2 smooth bezier with lines
set label 1 'n=50,p=0.3' at 15,0.08;
plot 'output1.dat' using 1:3 smooth bezier with lines
set label 2 '{/Symbol l}=15' at 15,0.07;
plot 'output1.dat' using 1:4 smooth bezier with lines
set label 3 '{/Symbol m}=15,{/Symbol s}=sqrt(10.5)' at 15,0.09;
plot 'output1.dat' using 1:2 smooth bezier title "binomial" with lines,'output1.dat' using 1:3 smooth bezier title "poisson" with lines,'output1.dat' using 1:4 smooth bezier title "gaussian" with lines