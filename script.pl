#!/usr/bin/perl

use open ':std', ':encoding(UTF-8)';
use HTML::TreeBuilder 5 -weak; # Ensure weak references in use

my $curl=`curl https://dsgvo-gesetz.de/art-12-dsgvo/`;
#print "$curl\n";

my $tree = HTML::TreeBuilder->new;
$tree->parse_content($curl);


my $ele = $tree->look_down('class','entry-title');
#print "\$ele is $ele\n\n";
my $out = $ele->as_text;
print "$out\n";

$ele = $tree->look_down('class','entry-content');
$out = $ele->as_text;
print "$out\n"

#getting children
#foreach my $ch ($leaderboard->content_list) {



#$tree->dump;
