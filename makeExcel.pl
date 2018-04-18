#!/usr/bin/perl
use strict;
use warnings;
use Excel::Writer::XLSX;

my $wb = Excel::Writer::XLSX->new( 'simple.xlsx' );
my $ws = $wb->add_worksheet();

$ws->write( "A1", "Hello Spreadsheet");
$ws->write( "A2", "Another row");

$wb->close;

