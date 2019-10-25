set terminal epslatex standalone
set output "check.tex"
set size square
set style fill transparent solid 0.5
set sample 500
set xrange [0:511]
#set yrange [0:3.2E-28]
set xtics('-200' 0, "-100" 128, "0" 256, "100" 384, "200" 511)
set xlabel '$r$ ($\mu$m)'
set ylabel "Field strength (J)"
set key spacing 1.5

p "V_1d.dat" w l lw 7 lc 3 title '$\frac{1}{2}m \mathbf{A}^2$ + $\frac{1}{2}m\omega^2x^2$', \
  "V_nogauge_1d.dat" w l lw 7 lc 7 dt 2 title '$\frac{1}{2}m\omega^2x^2$', \
  "A2.dat" w l lw 7 lc 6 dt 3 title '$\frac{1}{2} m \mathbf{A}^2$'
