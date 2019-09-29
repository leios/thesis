set terminal epslatex standalone color
set output "SHO_realtime.tex"

set view map
set size square

set yrange [0:256]
set key spacing 1.5

set ylabel 'x ($\mu$m)'
set ytics ("-100" 0, "-50" 64, "0" 128, "50" 192, "100" 256)
set xtics ("0" 0, "5" 50, "10" 100, "15" 150, "20" 200)

set xlabel 'time ($\mu$s)'
set key center top
set cblabel 'wavefunction density (arb. units)'
#set key box opaque
#set border back
set palette rgb 30,31,32

splot "wfcgrid.dat" matrix with image
