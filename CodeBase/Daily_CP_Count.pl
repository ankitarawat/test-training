#************************************************************************************************************
# Author: Ankita Rawat, Microfocus
# Version: 1.0
# History:
#       1.0 19.Sep.2017 Initial Version
#	    1.1 13.Nov.2017 Changed name from daily2.pl to Daily_CP_Count.pl

# Description: This Perl script counts the number of content packs created by counting the number of .jar files present in "Content_Packs" folder.
#		       This folder "Content_Packs" is present inside the workspace of the Job.

# Instruction:
# 1. If anytime for any reason there is a change in workspace address of the job,please change the current workspace address "C:\\Jenkins_agent\\workspace\\OO_DEV_DAILY_BUILD\\Content_Packs\\" with the newer address.

# *************************************************************************************************************



use strict;

 
opendir (DIR1,'C:\\Jenkins_agent\\workspace\\OO_DEV_DAILY_BUILD\\Content_Packs\\');
my @folder1 = readdir(DIR1);
print "\n Number of Content Packs created =" . (scalar @folder1 - 2);
print "\n--------------------------END OF CONTENT PACK CREATION--------------------------\n";
print "\n--------------------------NOW UPLOADING TO NEXUS--------------------------\n";




