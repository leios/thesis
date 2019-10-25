set terminal epslatex standalone color
set output "SHO_realtime.tex"

set view map
set size square

set yrange [0:512]
#set xrange [0:100]
set key spacing 1.5

set ylabel 'x ($\mu$m)'
set ytics ("-200" 0, "-100" 128, "0" 256, "100" 384, "200" 512)
set xtics ("0" 0, "0.1" 100, "0.2" 200, "0.3" 300, "0.4" 400, "0.5" 500)


set xlabel 'time (s)'
set key center top
set cblabel 'Normalized density'
#set key box opaque
#set border back
set palette rgb 30,31,32

splot "wfcgrid.dat" matrix with image
