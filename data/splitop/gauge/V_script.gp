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

p "V_1d.dat" w filledcurves x1 lc 3 title "Potential with gauge field", \
  "V_1d.dat" w l lw 7 lc 3 notitle, \
  "A2.dat" w filledcurves x1 lc 3 notitle, \
  "V_nogauge_1d.dat" w filledcurves x1 lc 3 notitle, \
  "V_nogauge_1d.dat" w l lw 7 lc 7 title "Potential without gauge field", \
  "A2.dat" w l lw 7 lc 6 dt 3 title '$m \mathbf{A}^2$'
