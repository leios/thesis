set terminal epslatex standalone color size 4.2, 2.8 in
#set terminal pngcairo
set output "SHO_energy.tex"

set view map
set size square

set key spacing 1.5

set ylabel 'Energy (J)'
set yrange [3e-33:1.3e-32]
set xtics ("0" 0, "0.1" 100, "0.2" 200, "0.3" 300, "0.4" 400, "0.5" 500)
hbar = 1.05e-34
gse = 5.27e-34

set xlabel 'time (s)'

plot "data/energy.dat" w l lw 3 dt 2 title '$E(t)$, (a)', \
     "data/energyi.dat" w l lw 3 title '$E(\tau )$, (b)'
