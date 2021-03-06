#!/usr/bin/env python
# -*- coding: utf-8 -*-
# convert modhmm xml output file into res file
# output the same result as the modhmm code modhmmxml2res
# however, the original modhmmxml2res code uses xslt language which can not
# handel huge (1GB) xml files
import sys,re,os;

usage="""
Usage:   my_modhmmxml2res.py [Options] [-i] xmlfile
Options:
  -i         <file> : input file
  -o         <file> : outputfile
  -h|--help         : print this help message and exit
Created 2010-08-23, updated 2010-08-23, Nanjiang
"""

def PrintHelp():
    print(usage);

def Modhmmxml2res(inFile,fpout):#{{{
#much faster version
    cntSeq=0;
    fpin = open(inFile, "r");
    line = fpin.readline();
#    r = re.compile("[<>]");
    r=re.compile("[(<)(>)]");
    while line:
        if line[0] != "\n": #if not empty line
            strs=r.split(line);
            if strs[1] == "hmm_name":
                hmmname=strs[2];
                print("# Scores for HMM: '%s'"%hmmname, file=fpout);
            elif strs[1] == "pure_seq_name_a":# a new record, ID
                cntSeq+=1;
                seqID=strs[2];
                print(file=fpout);
                print("%s" % seqID, file=fpout);
            elif strs[1] == "seqlength":
                length=int(strs[2]);
                print("Seq length: %d"%length, file=fpout);
                fpout.write("Labeling:\n");
                for i in range(length):
                    line=fpin.readline();
                    fpout.write("%c"%line[7]);
                    if (i+1)%60== 0:
                        fpout.write("\n");
                fpout.write("\n");
            elif strs[1] == "posteriorprobabilities":
                line=fpin.readline();
                strs = r.split(line);
                if strs[1] == "labels":
                    line=fpin.readline();
                    strs = r.split(line);
                    while strs[1] != "/labels":
                        line=fpin.readline();
                        strs = r.split(line);
            elif strs[1] == "post_prob_label_matrix":
                for i in range(length):
                    fpin.readline();
                    fpin.readline();
        line = fpin.readline();
    fpout.write("\n"); #add an end line
    fpin.close();
    return cntSeq;
#}}}
if __name__ == '__main__' :
    # Check argv
    numArgv=len(sys.argv)
    if numArgv < 2:
        PrintHelp();
        sys.exit(1);

    outFile="";
    inFile="";

    i = 1;
    isNonOptionArg=False
    while i < numArgv:
        if isNonOptionArg == True:
            isNonOptionArg=False;
            i = i + 1;
        elif sys.argv[i] == "--":
            isNonOptionArg=True;
            i = i + 1;
        elif sys.argv[i][0] == "-":
            if sys.argv[i] ==  "-h" or  sys.argv[i] == "--help":
                PrintHelp();
                sys.exit(0);
            elif sys.argv[i] == "-i" or sys.argv[i] == "--infile":
                inFile=sys.argv[i+1];
                i = i + 2;
            elif sys.argv[i] == "-o" or sys.argv[i] == "--outfile":
                outFile=sys.argv[i+1];
                i = i + 2;
            else:
                print(("Error! Wrong argument:%s" % sys.argv[i]), file=sys.stderr);
                sys.exit(1);
        else:
            inFile=sys.argv[i];
            i+=1;
           
    if inFile == "":
        print("Error! Input file not set.", file=sys.stderr);

    fpout = sys.stdout;
    if outFile != "":
        fpout = open(outFile,"w");

    try :
        numSeq = Modhmmxml2res(inFile, fpout);

        if fpout != sys.stdout:
            fpout.close();

    except :
        print("except for the input file: %s" % inFile, file=sys.stderr);
        raise ;
