set encoding iso_8859_1
set xrange [1:124]
set yrange [0.83:1.15]
set autoscale xfix
set ter png enh interlace size 2400,840 font 'Nimbus,40'
set xlabel 'Position'
set ylabel 'Reliability           ' 
set ytics nomirror 0.7,0.1,1
set out '/big/server/web_topcons2/debug/proj/pred/static/tmp/tmp_LUCOtf/rst_KQXgCM//seq_0//Topcons/topcons.large.png'
set tmargin 1.3
set lmargin 11.5
set rmargin 6.5
set label 'TOPCONS' font 'Nimbus,42' at screen 0.022,0.775
set object 1 rect from 0.5,1.06 to 17.5,1.064875 fc rgb "red" fs noborder
set object 2 rect from 70.5,1.06 to 76.5,1.064875 fc rgb "red" fs noborder
set object 3 rect from 119.5,1.06 to 124.5,1.064875 fc rgb "red" fs noborder
set object 4 rect from 38.5,1.081375 to 49.5,1.08625 fc rgb "blue" fs noborder
set object 5 rect from 97.5,1.081375 to 98.5,1.08625 fc rgb "blue" fs noborder
set object 6 rect from 17.5,1.06 to 38.5,1.08625 fc rgb "grey" fs noborder
set object 7 rect from 49.5,1.06 to 70.5,1.08625 fc rgb "white"
set object 8 rect from 76.5,1.06 to 97.5,1.08625 fc rgb "grey" fs noborder
set object 9 rect from 98.5,1.06 to 119.5,1.08625 fc rgb "white"
plot '/big/server/web_topcons2/debug/proj/pred/static/tmp/tmp_LUCOtf/rst_KQXgCM//seq_0//Topcons/reliability.final' w l t '' lc rgb "black" lw 4
exit
