#!/usr/bin/env perl

use strict;
use warnings FATAL => 'all';

use Test::More;

plan tests => 2;

BEGIN {
    use_ok( 'Net::Amazon::DirectConnect' );

    my $dc = Net::Amazon::DirectConnect->new;
    ok(my $connections = $dc->action('DescribeConnections'));
}
