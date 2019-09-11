set terminal epslatex standalone

set output "3_waves.tex"
set size square

set xlabel 't(s)'
set xtics ("0" 0, "1" 999)

set ylabel 'Amplitude'

set title "Time Domain

p "3\_waves.dat" w l lw 3 notitle
