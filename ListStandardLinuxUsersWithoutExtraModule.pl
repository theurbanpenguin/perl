#!/usr/bin/perl
#Lists only standard users using the UID range of 1000-60000
#Users are listed user database, usually /etc/passwd

use strict;
use warnings;
use 5.010;

my ($uid_min, $uid_max);
my @pwfile;

$uid_min = 1000;
$uid_max = 60000;

while ( @pwfile = getpwent()) {
  if ($pwfile[2] >= $uid_min and $pwfile[2] < $uid_max ) { 
    say $pwfile[0];
  }
}

