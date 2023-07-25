#!/usr/bin/perl

use strict;
use warnings;
use 5.010;

use CGI;
use CGI::Carp qw(fatalsToBrowser);

require '../WSSB::TUDM::ConcreteQuantity.pl';

my $cgi = CGI->new;
print $cgi->header( -type => "text/html" );

say "<html>";


WSSB::TUDM::ConcreteQuantity::print_head_element();

my $object = $cgi->param( "object" ) or die "Someone forgot to supply params hence breaking this website";
#say $object;

my $dbh = WSSB::TUDM::ConcreteQuantity::_connect_db();

# $object string follows naming in database
if ( $object eq "pad_footing" ) {
}
elsif ( $object eq "columns_f0" ) {
    WSSB::TUDM::ConcreteQuantity::show_all_columns( $dbh, 0 );
}
elsif ( $object eq "columns_f1" ) {
    WSSB::TUDM::ConcreteQuantity::show_all_columns( $dbh, 1 );
}
else {
    die "Someone tried to be smart but supplied the wrong key-value ".
        "for a param in the URL\n";
}


$dbh->disconnect();
say "</html>";

# besiyata d'shmaya




