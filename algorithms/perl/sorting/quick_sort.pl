#!/usr/bin/perl
use strict;
use warnings;

sub quick_sort {
    my @arr = @_;
    return @arr if @arr < 2;
    
    my $pivot = splice @arr, int(rand(@arr)), 1;
    my @lower = grep { $_ < $pivot } @arr;
    my @higher = grep { $_ >= $pivot } @arr;
    
    return (quick_sort(@lower), $pivot, quick_sort(@higher));
}

my @arr = (10, 7, 8, 9, 1, 5);
print "Original array: " . join(", ", @arr) . "\n";
my @sorted_arr = quick_sort(@arr);
print "Sorted array: " . join(", ", @sorted_arr) . "\n";
