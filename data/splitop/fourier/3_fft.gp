set terminal epslatex standalone size 4in, 4in

set output "3_fft.tex"
set size square

set xlabel 'frequency (Hz)'
set xrange [0:50]

set ylabel 'Amplitude'

set title "Frequency Domain"

p "3\_fft.dat" w l lw 3 lc 2 notitle
