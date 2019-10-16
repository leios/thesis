set terminal epslatex size 8cm,8cm
set output "STA.tex"
set for [i=1:5] linetype i dt i
#set encoding utf8
set border linewidth 1.5
set xlabel "particle number, $N$"
set ylabel "fidelity, $F$"
set ytic  
set xtic (1,3,5,7,9,11,13,15) 
set size square
set bmargin 5
set key
set yrange[0:1.2]

p "output_fid.dat" i 0 u 1:2 w l lt 1 linecolor rgb "red" lw 3 title "harmonic", \
"" i 0 u 1:3 w l lt 3 linecolor rgb "blue" lw 5 title '$b+\Omega$', \
