set terminal epslatex standalone color
set output "density_L10.tex"

set view map
set size square

set yrange [128:384]
set xrange [128:384]
set key spacing 1.5

set ylabel 'y ($\mu$m)'
set xlabel 'x ($\mu$m)'
set ytics ("-100" 128, "-50" 192, "0" 256, "50" 320, "100" 384)
set xtics ("-100" 128, "-50" 192, "0" 256, "50" 320, "100" 384)

set key center top
set cblabel 'wavefunction density (arb. units)'
#set key box opaque
#set border back
set palette defined ( 0 '#000090',\
                      1 '#000fff',\
                      2 '#0090ff',\
                      3 '#0fffee',\
                      4 '#90ff70',\
                      5 '#ffee00',\
                      6 '#ff7000',\
                      7 '#ee0000',\
                      8 '#7f0000')

splot "density\_L10.dat" matrix with image notitle
