#!/bin/bash

# awk
# 'BEGIN
# {   print "Beginning of tje file";
#     print "---------------------";
#     c=0;
# }
# {
#     print $0;   #$0 represents total line/record
#     c=c+1;
# }
# END
# {
#     print "--------------------";
#     print "The number of lines: " c
# }' input.txt


awk 'BEGIN{print "Beginning of the File";print"------------------";c=0;}{print
$0;c=c+1;}END{print ".........................";print "The Number Of Lines:" c}' input.txt