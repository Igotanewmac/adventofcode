#!/usr/local/bin/perl

use warnings;
use strict;


# first, lets load the input file
my $filename = "input.txt";
my @inputdata = do { local(@ARGV) = $filename; <> };

print "I have " . @inputdata . " entries!\n";

# now swap the words for numbers
s/one/o1e/g for @inputdata;
s/two/t2o/g for @inputdata;
s/three/th3ee/g for @inputdata;
s/four/fo4ur/g for @inputdata;
s/five/fi5ve/g for @inputdata;
s/six/s6ix/g for @inputdata;
s/seven/se7ven/g for @inputdata;
s/eight/ei8ght/g for @inputdata;
s/nine/ni9ne/g for @inputdata;

# now scan for the first and last number of every line, and sum them
my $tmp = 0;
my $total = 0;
my $counter = 0;
foreach (@inputdata) {
    /([0-9])/;
    $tmp = $1;
    /.*([0-9])/;
    $tmp .= $1;
    $total += $tmp;
    print $counter++ . " " . $tmp . ":" . $_;
}

print "The total is: " . $total . "\n";

