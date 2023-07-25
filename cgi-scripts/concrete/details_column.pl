#!/usr/bin/perl

use strict;
use warnings;
use 5.022;

use CGI;
use CGI::Carp qw( fatalsToBrowser );

require '../WSSB::TUDM::ConcreteQuantity.pl';

my $cgi = CGI->new;
print $cgi->header( -type => "text/html" );

my $dbh = WSSB::TUDM::ConcreteQuantity::_connect_db();

say "<html>";
WSSB::TUDM::ConcreteQuantity::print_head_element();

my $column_code = $cgi->param( "code" ) or die "Someone forgot to supply params hence breaking this website";
my $story = $cgi->param( "story" );

if ( (!defined ($story) and $story != 0) or $story eq '') {
    die "Param missing";
    
} else {
    if ( $story < 0 ) {
        die "Nonsense value for param";
    } else {
        #say "<p>$story</p>";
        WSSB::TUDM::ConcreteQuantity::details_column( $dbh, $story, $column_code );
    }
}
#say $object;

$dbh->disconnect();
say "</html>";

# besiyata d'shmaya
