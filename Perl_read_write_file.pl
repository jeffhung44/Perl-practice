use warnings;
use strict;
#use autodie;



# write in the bottom of the file.
my $test_fh;
open $test_fh,'>>','test' or die " can not open the file : $!\n";

foreach($test_fh){
print $test_fh "hi this is test for wrinting\n";
}
close $test_fh;

#write in top of the file

my $write_fh;
my $read_fh;
open $write_fh,'>>','test.top' or die "can not open the file:$! \n";
open $read_fh,'<','test', or die "can not open test:$! \n";

print $write_fh  "this is top line\n";

while(<$read_fh>){
        print $write_fh $_;
}
close $write_fh;
close $read_fh;

open my $rocks_fh,'>>','rock.txt' or die "can not open rock.txt :$!\n";
foreach my $rock (qw( slae lava granite)){
        print $rocks_fh $_
}
print $rocks_fh "limestone\n";
close $rocks_fh;
