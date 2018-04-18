#!/usr/bin/perl
#Lists only standard users using the min and max ids from /etc/login.defs
#requires Config::Simple module to be installed

use strict;
use warnings;
use 5.010;
use Config::Simple;

my ($config, $uid_min, $uid_max);
my @pwfile;

$config = new Config::Simple('/etc/login.defs');
$uid_min = $config->param('UID_MIN');
$uid_max = $config->param('UID_MAX');

while ( @pwfile = getpwent()) {
  if ($pwfile[2] >= $uid_min and $pwfile[2] < $uid_max ) { 
    say $pwfile[0];
  }
}

