use warnings;
#use strict;

my $dir_to_process = "./..";
opendir my $dh , $dir_to_process or die " can not open dir:$!";
foreach $file (readdir $dh){
        print"there has $file in dir\n";
}
closedir $dh;
