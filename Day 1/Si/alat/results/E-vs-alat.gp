#
set encoding iso_8859_1
set term qt

# define x and y range here
xmin=9.6
xmax=10.8
ymin=-15.850
ymax=-15.810

set xrange [xmin:xmax]
set yrange [ymin:ymax]

# define x and y labels here

set xlabel "alat"
set ylabel "Etot [Ry]"

# define fitting function?
f(x) = a + b*x + c*x**2 + d*x**3
# uncomment line below to fit f(x) via a,b
 fit f(x) 'Etot-vs-alat.dat' u 1:2 via a,b,c,d

plot \
     "Etot-vs-alat.dat" u 1:2 w p ps 1.2 lw 2.5 pt 4,\
     f(x) w l lw 2.0

pause -1


# replot to *eps for storage

pause -1

set terminal postscript enhanced portrait color solid 'Arial' 15
set output "myplot.eps"
set size 0.85, 0.4

replot