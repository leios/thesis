set terminal epslatex standalone
set output "SHO_2.tex"

set xrange [0:256]
set yrange [0:100000]
set key spacing 1.5

set xlabel 'x ($\mu$m)'
set xtics ("-100" 0, "-50" 64, "0" 128, "50" 192, "100" 256)

set ylabel "arb. units"
set key center top
#set key box opaque
#set border back

plot "Vfinal_2.dat" w l lw 3 dt 2 title '$\frac{2V}{m \omega_x^2 dx^2}$', \
     "wfcfinal_2.dat" w l lw 3 title '$|\Psi|^2$'
