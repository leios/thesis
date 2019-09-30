set terminal epslatex standalone color
set output "phase_L1.tex"

set view map
set size square

set yrange [128:384]
set xrange [128:384]
set key spacing 1.5

set ylabel 'y ($\mu$m)'
set xlabel 'x ($\mu$m)'
set ytics ("-100" 128, "-50" 192, "0" 256, "50" 320, "100" 384)
set xtics ("-100" 128, "-50" 192, "0" 256, "50" 320, "100" 384)

set xlabel 'time ($\mu$s)'
set key center top
set cblabel 'wavefunction density (arb. units)'
#set key box opaque
#set border back
set palette defined ( 0 "blue", 1 "white", 2 "red") 

splot "density\_L1.dat" matrix with image
