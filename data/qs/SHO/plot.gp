set terminal epslatex standalone
set output "SHO.tex"

set xrange [0:256]
set yrange [0:4.2e8]
set key spacing 1.5

set xlabel 'x ($\mu$m)'
set xtics ("-250" 0, "-125" 64, "0" 128, "125" 192, "250" 256)

set ylabel "arb. units"
#set key center top
#set key box opaque
#set border back

plot "wfc_g0.dat" w l lw 3 dt 5 title '$g=0$', \
     "wfc_g0.5.dat" w l lw 3 dt 4 title '$g = 0.5$', \
     "wfc_g1.dat" w l lw 3 dt 3 title '$g = 1$', \
     "wfc_g1.5.dat" w l lw 3 dt 2 title '$g = 1.5$', \
     "wfc_g2.dat" w l lw 3 dt 1 title '$g = 2$', \
