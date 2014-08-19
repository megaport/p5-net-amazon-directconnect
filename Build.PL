use 5.006;
use strict;
use warnings FATAL => 'all';
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Net::Amazon::DirectConnect',
    license             => 'open_source',
    dist_author         => q{Cameron Daniel <cameron.daniel@megaport.com>},
    dist_version_from   => 'lib/Net/Amazon/DirectConnect.pm',
    release_status      => 'stable',
    configure_requires => {
        'Module::Build' => 0,
    },
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Net::Amazon::Signature::V4'    => 0.14,
        'JSON'                          => 0,
        'YAML::Tiny'                    => 1.0,
        'LWP::UserAgent'                => 6.0
    },
    add_to_cleanup     => [ 'Net-Amazon-DirectConnect-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
