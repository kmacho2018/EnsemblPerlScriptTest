#!/usr/bin/perl
#
# Author:  Juan Camacho <juancarloscamacho01@gmail.com>
#          First release June.15 2020
# Description: Perl Script using the latest human data from Ensembl release and the Perl API to convert coordinates on chromosome.
#(e.g chromosome 10 from 25000 to 30000 )to the same region in GRCh37.
#
# Terminal command:
# $perl ensemblPerlScriptCurl.pl GRCh37 X:25000..30000 GRCh37
#

use strict;
use warnings;
use Term::ANSIColor;
use Test;
 
my $myversion = '1.0.0';
my $server = 'http://grch37.rest.ensembl.org';

print "\033[2J";    #clear the screen
print "\033[0;0H"; #jump to 0,0

print color("yellow"), "Perl Script using the latest human data from Ensembl release and the Perl API to convert coordinates on chromosome\n", color("reset");

print "\n\nScript arguments:\n";
print "server: $server\n";
print "asm_one: $ARGV[0]\n";
print "region: $ARGV[1]\n";
print "asm_two: $ARGV[2]\n";
print "Request URL: ";
print color("blue"), "http://grch37.rest.ensembl.org/map/human/$ARGV[0]/$ARGV[1]/$ARGV[2]?", color("reset");

my $ext = "/map/human/$ARGV[0]/$ARGV[1]/$ARGV[2]?";
ok(length $ext >38);
BEGIN { plan tests => 0 }

system "curl  $server$ext";

sub version {
	print "version $myversion\n";
	exit;
}