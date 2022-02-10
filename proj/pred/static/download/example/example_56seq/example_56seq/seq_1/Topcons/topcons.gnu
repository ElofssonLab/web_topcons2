set encoding iso_8859_1
set xrange [1:372]
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
set object 1 rect from 0.5,1.06 to 180.5,1.064875 fc rgb "red" fs noborder
set object 2 rect from 252.5,1.06 to 262.5,1.064875 fc rgb "red" fs noborder
set object 3 rect from 310.5,1.06 to 317.5,1.064875 fc rgb "red" fs noborder
set object 4 rect from 365.5,1.06 to 372.5,1.064875 fc rgb "red" fs noborder
set object 5 rect from 201.5,1.081375 to 231.5,1.08625 fc rgb "blue" fs noborder
set object 6 rect from 283.5,1.081375 to 289.5,1.08625 fc rgb "blue" fs noborder
set object 7 rect from 338.5,1.081375 to 344.5,1.08625 fc rgb "blue" fs noborder
set object 8 rect from 180.5,1.06 to 201.5,1.08625 fc rgb "grey" fs noborder
set object 9 rect from 231.5,1.06 to 252.5,1.08625 fc rgb "white"
set object 10 rect from 262.5,1.06 to 283.5,1.08625 fc rgb "grey" fs noborder
set object 11 rect from 289.5,1.06 to 310.5,1.08625 fc rgb "white"
set object 12 rect from 317.5,1.06 to 338.5,1.08625 fc rgb "grey" fs noborder
set object 13 rect from 344.5,1.06 to 365.5,1.08625 fc rgb "white"
plot '/big/server/web_topcons2/debug/proj/pred/static/tmp/tmp_LUCOtf/rst_KQXgCM//seq_0//Topcons/reliability.final' w l t '' lc rgb "black" lw 4
exit
