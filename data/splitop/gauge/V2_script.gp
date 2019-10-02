set terminal epslatex standalone
set output "check.tex"
set size square
set style fill transparent solid 0.5
set sample 500
set xrange [0:255]
set yrange [0:3.2E-28]
set xtics('-1.024' 0, "-0.512" 64, "0" 128, "0.512" 192, "1.024" 255)
set xlabel '$r$ ($\mu$m)'
set ylabel "Field strength (J)"

p "V_0_1d.dat" w filledcurves x1 lc 3 title "Potential with gauge field", \
  "V_0_1d.dat" w l lw 7 lc 3 notitle, \
  "mAA_0_1d.dat" w filledcurves x1 lc 3 notitle, \
  "V_0_noA_1d.dat" w filledcurves x1 lc 3 notitle, \
  "V_0_noA_1d.dat" w l lw 7 lc 7 title "Potential without gauge field", \
  "mAA_0_1d.dat" w l lw 7 lc 6 dt 3 title '$\frac{m \mathbf{A}^2}{2}$'
