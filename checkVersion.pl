#!/usr/bin/perl -w

use strict;
my $version = `perl -v | grep "version"`;
if ($version eq "") {
  print $version = 0;
}
elsif($version = ~/((\d)+)\W((\d)+)\W((\d)+)/) {
  print "$1\.$3\.$5\n";
  $version = $ & ;
}
else {
  $version = 0;
}

print "Perl version is: $version\n";