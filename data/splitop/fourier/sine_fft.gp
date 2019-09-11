set terminal epslatex standalone

set output "sine_fft.tex"
set size square

set xlabel 'frequency (Hz)'
set xrange [0:50]

set ylabel 'Amplitude'

set title "Frequency Domain"

p "sine\_fft.dat" w l lw 3 lc 2 notitle
