set grid xtics lt -1 lw 1
set format y "%5.1f"
set format x ""
set ylabel "Energy (Ry)"
unset xlabel

set xtics (0.0000, 0.1667, 0.8333, 1.4107, 1.7440)

plot [0:1.7440] 'graphene.bands.dat.gnu' w linespoints lw 2 pt 4 ps 1.2
pause -1
