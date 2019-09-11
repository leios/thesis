set terminal epslatex standalone size 4in, 4in

set output "sine_wave.tex"
set size square

set xlabel 't(s)'
set xtics ("0" 0, "1" 999)

set ylabel 'Amplitude'

set title "Time Domain"

p "sine\_wave.dat" w l lw 3 notitle
