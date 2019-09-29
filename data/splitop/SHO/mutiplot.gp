set terminal epslatex standalone color size 6, 10 in
set output "SHO.tex"

set view map
set size square

set yrange [0:256]
set xrange [0:100]
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

set multiplot layout 3, 1
unset xtics
unset xlabel

splot "data/wfcgrid.dat" matrix with image
splot "data/wfcgrid\_im.dat" matrix with image

set size 1, 0.282
set yrange [5e-34:7.8e-34]
set xtics ("0" 0, "5" 50, "10" 100, "15" 150, "20" 200)
set xlabel 'time ($\mu$s)'
set ylabel 'Energy (J)'
set ytics auto
plot "data/energy.dat" w l lw 3 dt 2 title "real, (a)", \
     "data/energyi.dat" w l lw 3 title "imaginary, (b)"
unset multiplot
