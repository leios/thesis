set terminal epslatex standalone color
set output "NM.tex"

set view map
set size square

set yrange [0:512]
set xrange [0:512]

set ytics ("-2" 0, "-1" 128, "0" 256, "1" 384, "2" 512)
set xtics ("-2" 0, "-1" 128, "0" 256, "1" 384, "2" 512)

set xlabel 'x'
set ylabel 'y'
set cblabel 'Rosenbrock value'
set palette rgb 30,31,32

unset key

splot "banana.dat" matrix with image, \
      "centroids.dat" u ($1*384):($2*384):0 w l lc rgb "white" lw 5, \
      "centroids.dat" u ($1*384):($2*384):0 pt 7 ps 1
