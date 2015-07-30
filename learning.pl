#!/usr/bin/perl
use warnings;
use Getopt::Long qw(GetOptions);

my $file = "spanish/list01.txt";
my $percent = "100";

GetOptions('file=s' => \$file,
           'perc=s' => \$percent,
           'help|h' => \$help) or die "Usage $0 -i=input_file -p=50 --help\n";
           
if ($help) {
           print "MANUAL \n=========\n";
           print " Improve your vocabulary\n";
           print "   $0 -i=input_file -perc=50\n";
           print "   $0 -i=input_file\n";
           print "   $0 --help\n";
           print "   $0 -h\n\n";
           print "FLAGS \n-------\n";
           printf("  %-19s input lexical file\n", "--file/-f:");
           printf("  %-19s percentage of file to test\n", "--perc/-p:");
           printf("  --help/-h: to display this help\n\n");
           exit 0;
}

#get number of lines in file
if (-e $file) {
           open(file, $file);
           @lines = <file>;
           close(file);
           $num = @lines;
           print "Number of lines is $num\n";
} else { 
           exit 0; 
}

my $range = 10;
my $random_number = int(rand($range));
#print $random_number . "\n";

print $percent . "\n";


