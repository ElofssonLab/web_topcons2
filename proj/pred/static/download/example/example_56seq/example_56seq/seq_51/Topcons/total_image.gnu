set encoding iso_8859_1
set yrange [0:50]
set xrange [1:124]
set y2range [-2:18.6]
set autoscale xfix
set ter png enh interlace size 2400,1680 font 'Nimbus,40'
set y2label '{/Symbol D}G (kcal/mol)                                             ' tc lt 3
set ytics scale 1,0.5 nomirror ("0" 0, "5" 5, "10" 10, "15" 15, "20" 20, "25" 25, "SPOCTOPUS" 30.5 0, "SCAMPI" 33.5 0, "PolyPhobius" 36.5 0, "Philius" 39.5 0, "OCTOPUS" 42.5 0, "TOPCONS" 45.5 0)
set y2tics nomirror -3,2,9
set out '/big/server/web_topcons2/debug/proj/pred/static/tmp/tmp_LUCOtf/rst_KQXgCM//seq_0//Topcons/total_image.large.png'
set lmargin 13.5
set rmargin 6.5
set tmargin 1.3
set object 1 rect from screen 0.19,0.986 to screen 0.21,0.992 fc rgb "red" fs noborder
set label 'Inside' font 'Nimbus,30' at screen 0.215,0.982
set object 2 rect from screen 0.28,0.986 to screen 0.30,0.992 fc rgb "blue" fs noborder
set label 'Outside' font 'Nimbus,30' at screen 0.305,0.982
set object 3 rect from screen 0.38,0.978 to screen 0.40,1 fc rgb "grey" fs noborder
set label 'TM-helix (IN->OUT)' font 'Nimbus,30' at screen 0.405,0.982
set object 4 rect from screen 0.57,0.978 to screen 0.59,1 fc rgb "white"
set label 'TM-helix (OUT->IN)' font 'Nimbus,30' at screen 0.595,0.982
set object 5 rect from screen 0.76,0.978 to screen 0.78,1 fc rgb "black"
set label 'Signal peptide' font 'Nimbus,30' at screen 0.785,0.982
set object 6 rect from 0.5,30 to 17.5,30.2 fc rgb "red" fs noborder
set object 7 rect from 70.5,30 to 80.5,30.2 fc rgb "red" fs noborder
set object 8 rect from 111.5,30 to 124.5,30.2 fc rgb "red" fs noborder
set object 9 rect from 38.5,30.8 to 49.5,31 fc rgb "blue" fs noborder
set object 10 rect from 95.5,30.8 to 96.5,31 fc rgb "blue" fs noborder
set object 11 rect from 17.5,30 to 38.5,31 fc rgb "grey" fs noborder
set object 12 rect from 49.5,30 to 70.5,31 fc rgb "white"
set object 13 rect from 80.5,30 to 95.5,31 fc rgb "grey" fs noborder
set object 14 rect from 96.5,30 to 111.5,31 fc rgb "white"
set object 15 rect from 0.5,33 to 19.5,33.2 fc rgb "red" fs noborder
set object 16 rect from 69.5,33 to 74.5,33.2 fc rgb "red" fs noborder
set object 17 rect from 119.5,33 to 124.5,33.2 fc rgb "red" fs noborder
set object 18 rect from 40.5,33.8 to 48.5,34 fc rgb "blue" fs noborder
set object 19 rect from 95.5,33.8 to 98.5,34 fc rgb "blue" fs noborder
set object 20 rect from 19.5,33 to 40.5,34 fc rgb "grey" fs noborder
set object 21 rect from 48.5,33 to 69.5,34 fc rgb "white"
set object 22 rect from 74.5,33 to 95.5,34 fc rgb "grey" fs noborder
set object 23 rect from 98.5,33 to 119.5,34 fc rgb "white"
set object 24 rect from 0.5,36 to 19.5,36.2 fc rgb "red" fs noborder
set object 25 rect from 71.5,36 to 78.5,36.2 fc rgb "red" fs noborder
set object 26 rect from 119.5,36 to 124.5,36.2 fc rgb "red" fs noborder
set object 27 rect from 38.5,36.8 to 49.5,37 fc rgb "blue" fs noborder
set object 28 rect from 96.5,36.8 to 97.5,37 fc rgb "blue" fs noborder
set object 29 rect from 19.5,36 to 38.5,37 fc rgb "grey" fs noborder
set object 30 rect from 49.5,36 to 71.5,37 fc rgb "white"
set object 31 rect from 78.5,36 to 96.5,37 fc rgb "grey" fs noborder
set object 32 rect from 97.5,36 to 119.5,37 fc rgb "white"
set object 33 rect from 0.5,39 to 19.5,39.2 fc rgb "red" fs noborder
set object 34 rect from 72.5,39 to 82.5,39.2 fc rgb "red" fs noborder
set object 35 rect from 40.5,39.8 to 48.5,40 fc rgb "blue" fs noborder
set object 36 rect from 108.5,39.8 to 124.5,40 fc rgb "blue" fs noborder
set object 37 rect from 19.5,39 to 40.5,40 fc rgb "grey" fs noborder
set object 38 rect from 48.5,39 to 72.5,40 fc rgb "white"
set object 39 rect from 82.5,39 to 108.5,40 fc rgb "grey" fs noborder
set object 40 rect from 0.5,42 to 17.5,42.2 fc rgb "red" fs noborder
set object 41 rect from 70.5,42 to 80.5,42.2 fc rgb "red" fs noborder
set object 42 rect from 111.5,42 to 124.5,42.2 fc rgb "red" fs noborder
set object 43 rect from 38.5,42.8 to 49.5,43 fc rgb "blue" fs noborder
set object 44 rect from 95.5,42.8 to 96.5,43 fc rgb "blue" fs noborder
set object 45 rect from 17.5,42 to 38.5,43 fc rgb "grey" fs noborder
set object 46 rect from 49.5,42 to 70.5,43 fc rgb "white"
set object 47 rect from 80.5,42 to 95.5,43 fc rgb "grey" fs noborder
set object 48 rect from 96.5,42 to 111.5,43 fc rgb "white"
set object 49 rect from 0.5,45 to 17.5,45.2 fc rgb "red" fs noborder
set object 50 rect from 70.5,45 to 76.5,45.2 fc rgb "red" fs noborder
set object 51 rect from 119.5,45 to 124.5,45.2 fc rgb "red" fs noborder
set object 52 rect from 38.5,45.8 to 49.5,46 fc rgb "blue" fs noborder
set object 53 rect from 97.5,45.8 to 98.5,46 fc rgb "blue" fs noborder
set object 54 rect from 17.5,45 to 38.5,46 fc rgb "grey" fs noborder
set object 55 rect from 49.5,45 to 70.5,46 fc rgb "white"
set object 56 rect from 76.5,45 to 97.5,46 fc rgb "grey" fs noborder
set object 57 rect from 98.5,45 to 119.5,46 fc rgb "white"
plot '/big/server/web_topcons2/debug/proj/pred/static/tmp/tmp_LUCOtf/rst_KQXgCM//seq_0//DG1.txt' axes x1y2 w l t '' lt 3 lw 4
exit
