# set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
# set output 'layout.6.png'
set format y "%.1f" 
set key fixed right top vertical Right noreverse enhanced autotitle box lt black linewidth 1.000 dashtype solid
set key opaque
set style increment default
unset ytics
set xlabel "xlabel" 
set xrange [ -6.28319 : 6.28319 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback
set yrange [ * : * ] noreverse writeback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
MP_LEFT = 0.1
MP_RIGHT = 0.95
MP_BOTTOM = 0.1
MP_TOP = 0.9
MP_GAP = 0.05
## Last datafile plotted: "immigration.dat"
plot cos(2*x) lt 4

