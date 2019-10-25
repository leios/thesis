set terminal epslatex standalone
set output "SHO.tex"

set xrange [0:256]
set yrange [0:8e7]
set key spacing 1.5

set xlabel 'x ($\mu$m)'
set xtics ("-250" 0, "-125" 64, "0" 128, "125" 192, "250" 256)

set ylabel "Normalized density"
#set key center top
#set key box opaque
#set border back

plot "TF.dat" w l lw 5 lc 3 title 'TF', \
     "wfc_g1.dat" w l lw 5 dt 2 lc 1 title '$g=1$', \
