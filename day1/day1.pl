#!/usr/local/bin/perl

use warnings;
use strict;


# first, lets load the input file
my $filename = "input.txt";
my @inputdata = do { local(@ARGV) = $filename; <> };

print "I have " . @inputdata . " entries!\n";

# now scan for the first and last number of every line, and sum them
my $tmp = 0;
my $total = 0;
foreach (@inputdata) {
    /([0-9])/;
    $tmp = $1;
    /.*([0-9])/;
    $tmp .= $1;
    $total += $tmp;
}

print "The total is: " . $total . "\n";

