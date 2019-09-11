set terminal epslatex standalone
set output "momentum.tex"

set size square

set xrange [256:768]
set xtics ("-5" 256, "0" 512, "5" 768)

set title "Momentum space distributions"

plot for [i=0:9] "gaussian_fft_data.dat" index i title sprintf('$\sigma = %.1f$', (i+1)/10.0) w l lw 3 
