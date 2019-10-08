#set terminal epslatex standalone color size 4.2, 2.8 in
set terminal pngcairo
set output "SHO_energy.png"

set view map
set size square

set key spacing 1.5

set ylabel 'Energy (J)'
set yrange [5e-34:7.8e-34]
set xtics ("0" 0, "5" 50, "10" 100, "15" 150, "20" 200)
set xrange [0:100]
hbar = 1.05e-34
gse = 5.27e-34

set xlabel 'time ($\mu$s)'

plot "data/energy.dat" w l lw 3 dt 2 title "real energy, (a)", \
     "data/energyi.dat" w l lw 3 title "imaginary energy, (b)", \
     (7.05e-34-gse)*exp(-7.05e-34*0.0275*x/hbar) + gse w l lw 3 dt 2
