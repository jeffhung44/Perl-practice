use warnings;
use strict;


my $dir = <>;
my $dir_handle;
my $file;
my $file_handle;
my $file_out;
my $file_out_handle;

opendir $dir_handle, $dir or die "can not open dir :$!";
foreach $file (readdir $dir_handle){
    print $file "this is top line in the file\n";
    }
    close $dir_handle;

