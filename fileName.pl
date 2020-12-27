#!/usr/bin/perl -w

use strict;
use warnings;
use Getopt::Long;
use File::Basename;

use Term::ANSIColor;

my $script = basename $0;

my $usage = "
Usage: $script NAME [SUFFIX]
  or:  $script OPTION
Print NAME with any leading directory components removed.
If specified, also remove a trailing SUFFIX.
       -h, --help       Display this help and exit
Examples:
  $script /usr/bin/sort       Output \"sort\".
  $script include/stdio.h .h  Output \"stdio\".
";

my $ret = GetOptions( 'help|h' => \&usage, );

if ( !$ret ) {
    &usage();
}

if ( @ARGV > 2 or @ARGV <= 0 ) {
    &usage();
}

&main();

sub main {
    my ( $file, $suffix ) = @ARGV;
    my @basename;

    if ( !$file ) {
        &usage();
    }

    if ( $file =~ /\// ) {
        @basename = split( '\/', $file );
        ### @basename
        my $scalar = @basename;
        ### $scalar
        $file = $basename[ $scalar - 1 ];
    }

    if ($suffix) {
        if ( $file =~ /(.*)$suffix$/ ) {
            $file = $1;
        }
    }
    print "$file\n";
    ### $file
}

sub usage {
    print color("blue");
    print $usage;
    print color("reset");
    exit;
}
