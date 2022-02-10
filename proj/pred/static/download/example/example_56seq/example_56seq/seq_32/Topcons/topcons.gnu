set encoding iso_8859_1
set xrange [1:129]
set yrange [0.83:1.05]
set autoscale xfix
set ter png enh interlace size 2400,840 font 'Nimbus,40'
set xlabel 'Position'
set ylabel 'Reliability           ' 
set ytics nomirror 0.9,0.1,1
set out '/big/server/web_topcons2/debug/proj/pred/static/tmp/tmp_LUCOtf/rst_KQXgCM//seq_0//Topcons/topcons.large.png'
set tmargin 1.3
set lmargin 11.5
set rmargin 6.5
set label 'TOPCONS' font 'Nimbus,42' at screen 0.022,0.775
set object 1 rect from 0.5,1.02 to 43.5,1.021625 fc rgb "red" fs noborder
set object 2 rect from 107.5,1.02 to 129.5,1.021625 fc rgb "red" fs noborder
set object 3 rect from 64.5,1.027125 to 86.5,1.02875 fc rgb "blue" fs noborder
set object 4 rect from 43.5,1.02 to 64.5,1.02875 fc rgb "grey" fs noborder
set object 5 rect from 86.5,1.02 to 107.5,1.02875 fc rgb "white"
plot '/big/server/web_topcons2/debug/proj/pred/static/tmp/tmp_LUCOtf/rst_KQXgCM//seq_0//Topcons/reliability.final' w l t '' lc rgb "black" lw 4
exit
