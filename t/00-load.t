#!/usr/bin/env perl

use strict;
use warnings FATAL => 'all';

use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Net::Amazon::DirectConnect' );
}
