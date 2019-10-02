set terminal epslatex standalone
set output "SHO.tex"

set xrange [0:256]
set yrange [0:4.2e8]
set key spacing 1.5

set xlabel 'x ($\mu$m)'
set xtics ("-250" 0, "-125" 64, "0" 128, "125" 192, "256" 256)

set ylabel "arb. units"
#set key center top
#set key box opaque
#set border back

plot "wfcfinal.dat" w l lw 3 dt 4 title 'Schr\"odinger density', \
     "wfc_GPEfinal.dat" w l lw 3 title 'GPE density'
