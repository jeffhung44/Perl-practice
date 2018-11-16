#
# Hello World Program in Perl
#

use warnings;
#use autodie;
use strict;

my $a = 1;
my $b = 2;
my $c = 3;
my $d = $a +$b * $c;

my @e = qw[1 2 3 4 5 6 7 10 9];
my @f = qw[apple box cat];
my @g = @e;
my @h = qw/ this is test/;
my $h = 'hi';

print "Sum of a+b*c = ",$d."\n";
print "element in e are ",@e,"\n";
print "element in f are ",@f,"\n";
print "element in g are ",@g,"\n";
print "element in h are ",@h,"\n";
print "element in h[1] is ",$h[0],"\n";
print "element in \$h is ",$h,"\n";

print "please enter something\n";
my @lines = <STDIN>;
chomp (@lines);
print "input data is $lines[0] \n";

foreach $h(@h){
    $h = "$h";
    $h .="\n";
}
print "list h: \n",@h,"\n";

 $d =   &mul;
print "d = $d\n";

my $maximum = &max(@e);
print "maximum in \$e is $maximum \n";

#CH4
sub mul{
    print "calling sub function \n";
    $a+$b+$c;

}

sub max{
    my ($max_so_far) = shift @_;
    foreach(@_){
        if($_ > $max_so_far){
            $max_so_far = $_;
        }
    }
    $max_so_far;
}


my @fred = qw{ 1 3 5 7 9 };
my $fred_total = &total(@fred);
print "sum of \@fred is $fred_total \n";
my $user_total = &total(<STDIN>);
print "sum of the input values is $user_total\n";

print "sum 1 .. 1000 is ",&total(1..1000),"\n";


sub total{
    my $sum;
 foreach(@_){
     $sum+=$_;
 }   
 $sum;
}

#CH5
while(my $intest=<STDIN>){
        print " I saw $intest";
}



while (defined(my $linee= <>)){        #can load the file from argument
        chomp($linee);
        print " I saw $linee \n";
}

@ARGV = qw# test test1 test2 perlarg.pl #;
while (<>){
        chomp;
        print " I saw $_ \n";
}


my $name1 = "larry wall";
print " hi, $name1 did you know 3+4 = ",3+4,"?\n";
my @array = qw/ jj ii kk /;
print @array,"\n";
print "@array\n";
