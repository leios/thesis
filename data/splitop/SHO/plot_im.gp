set terminal epslatex standalone color
set output "SHO_imagtime.tex"

set view map
set size square

set yrange [0:512]
set key spacing 1.5

set ylabel 'x ($\mu$m)'
set ytics ("-100" 0, "-50" 128, "0" 256, "50" 384, "100" 512)
set xtics ("0" 0, "0.1" 100, "0.2" 200, "0.3" 300, "0.4" 400, "0.5" 500)

set xlabel 'imaginary time (s)'
set key center top
set cblabel 'wavefunction density (arb. units)'
#set key box opaque
#set border back
set palette rgb 30,31,32


splot "wfcgrid\_im.dat" matrix with image
