#/usr/bin/perl

use strict;
use warnings;
use 5.010;

use CGI::Carp qw( fatalsToBrowser );
use DBI;

package WSSB::TUDM::ConcreteQuantity;

sub print_head_element {
    say "<head>";
    say     "<title>View Data</title>";
    #say     "<link rel='stylesheet' href='http://192.168.0.190/WSSB/MuaraTuang/app/styles.css'/>";
    #say     "<link rel='stylesheet' href='http://192.168.43.190/WSSB/MuaraTuang/app/styles.css'/>";
    say     "<link rel='stylesheet' href='http://localhost/WSSB/MuaraTuang/app/styles.css'/>";
    say "</head>";
}

sub process_data { ... }

sub _connect_db { 

    my $dsn = "DBI:mysql:database=WSSB_MuaraTuang;host=localhost";
    my $dbh = DBI->connect( $dsn, "xxx", 'xxx', {"RaiseError" => 1} );

    return $dbh;
}

sub _process_object { ... }

sub show_all_columns {
    my $dbh = shift or die "No db handle passed in";
    my $story = shift; # story 0 will be treated as undef
    
    my ($query, $sql);
    
    if ( (!defined ($story) and $story != 0) or $story eq '') {
        die "No level/story passed in";
    } else {
        $sql = "select `code`, `code_pad_footing` from `columns_story-". $story ."_concrete`";
        #say "<br>$sql";
        $query = $dbh->prepare( $sql );

        $query->execute();
        
        my $row;
        my $has_data = 0;
        
        say "<h2 class='header-center'>Columns for Floor $story</h2>";
        say "<table border=2 style='text-align: center;'>";
        say     "<tr>";
        say         "<th>Column #</th>";
        say         "<th>=></th>";
        say         "<th>Pad Footing #</th>";
        say     "</tr>";
        while ( $row = $query->fetchrow_hashref() ) {

            $has_data++;

            if ( !$row->{'code_pad_footing'} ) {
                
                say "<tr class='problematic-data'>";
                say "<td>$row->{'code'}</td> <td>=></td> <td>N/A</td>";
                say "</tr>";
                
            } else {
                
                _table_data_with_button(
                    $row->{ "code" } => "details_column.pl" => $story,
                    $row->{ "code_pad_footing" } => "details_pad_footing.pl"
                );
            }

        }
        say "</table>";
        
        if ( $has_data ) {
            say "<p>Successfully processed all the data</p>";
        } else {
            say "<p>No data found, sorry</p>";
        }
        
    }    

    $query->finish();
}

sub _table_data_with_button {
    my $column_code = shift or die "Missing column id";
    my $cgi_column = shift or die "Missing column details cgi filename";
    my $story = shift;
    if ( (!defined ($story) and $story != 0) or $story eq '') {
        die "Missing floor/story number";
    }
    my $pad_footing_code = shift or die "Missing pad footing id";
    my $cgi_pad_footing = shift or die "Missing pad footing details cgi filename";

    say "<tr class='data-ok'>";
    
    __td_button ( $column_code => $cgi_column, $story );
    
    say "<td> => </td>";
    
    __td_button ( $pad_footing_code => $cgi_pad_footing );

}

sub __td_button {
    my $object_code = shift or die "Missing object code";
    my $cgi_object = shift or die "Missing object details cgi filename";
    my $story = shift; # this is optional
    
    say "<td>$object_code&nbsp;&nbsp;&nbsp;".
            "<button>";
    say         "<a href='http://localhost/cgi-bin/WSSB-TUDM/concrete/$cgi_object/?code=".$object_code;
    if ( defined $story and $story >= 0 ) {
        say "&story=$story'";
    } else {
        say "'";
    }
    say         " class='button'>View"."</a>".
            "</button>".
        "</td>";
}

sub show_all_pad_footings { ... }

sub details_column {
    my ( $dbh, $story, $code ) = @_;
    my $sql = "select * from `columns_story-".$story."_concrete` ".
              "where `code`=".$code;
    
    my $query = $dbh->prepare( $sql );
    $query->execute();
    
    my $row_ref;
    
    while ( $row_ref = $query->fetchrow_hashref() ) {
    
        if (scalar keys %$row_ref != 7) {
            die "Missing data, check your sql, we need ALL 7 headers!";
            
        } else {
            # Headers: code code_pad_footing length width depth area volume
            # depth == height :)
            
            say "<h3 class='header-center details'>F$story-C#$code Details</h3>";
            say "<div class='details'>";
            
            say     "<p class='attribute'>Pad Footing Code</p>";
            say     "<p class='value'>#".$row_ref->{ "code_pad_footing" }."</p>";
            
            say     "<p class='attribute'>Base area (m^2)</p>";
            say     "<p class='value'>".$row_ref->{ area }."</p>";
            
            say     "<p class='attribute'>Dimension (l x w x h), mm</p>";
            say     "<p class='value'>".
                        $row_ref->{ "length" }." x ".
                        $row_ref->{ "width" }." x ".
                        $row_ref->{ "depth" }.
                    "</p>";
            
            say     "<p class='attribute'>Concrete needed (m^3)</p>";
            say     "<p class='value'>".$row_ref->{ "volume" }."</p>";
            say "</div>"
        }
    }
    

}
sub details_pad_footing { ... }

sub ok_pad_footing_dig_compact { ... }
sub ok_pad_footing_formwork { ... }
sub ok_pad_footing_concrete_in { ... }


sub test {
    say "Printing from WSSB::Tudm::ConcreteQuantity";
}

1;
