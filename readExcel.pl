#!/usr/bin/perl
use strict;
use warnings;
use 5.010;
use Spreadsheet::Read qw(ReadData);

my $wb = ReadData ( 'simple.xlsx' );
say 'A1: ' . $wb->[1]{A1};

