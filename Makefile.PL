# Copyright (C) 2015-2017 Yoann Le Garff, Nicolas Boquet and Yann Le Bras
# navel-mojolicious-plugin-logger is licensed under the Apache License, Version 2.0

#-> BEGIN

#-> initialization

use strict;
use warnings;

use ExtUtils::MakeMaker;

#-> main

my $min_perl_version = '5.20.0';

WriteMakefile(
    NAME => 'Navel::Mojolicious::Plugin::Logger',
    VERSION_FROM => 'lib/Navel/Mojolicious/Plugin/Logger.pm',
    ABSTRACT => 'navel-mojolicious-plugin-logger',
    AUTHOR => 'Yoann Le Garff, Nicolas Boquet and Yann Le Bras',
    LICENSE => 'apache_2_0',
    META_MERGE => {
        requires => {
            perl => $min_perl_version
        },
        resources => {
            license => 'http://www.apache.org/licenses/LICENSE-2.0.html',
            repository => 'http://github.com/Navel-IT/navel-mojolicious-plugin-logger'
        }
    },
    MIN_PERL_VERSION => $min_perl_version,
    PREREQ_PM => {
        'Navel::Base' => 0,
        'Navel::Logger' => 0,
        'Navel::Mojolicious::Plugin::API::StdResponses' => 0,
        'Mojolicious' => 0
    },
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 6.64
    },
    TEST_REQUIRES => {
        'Test::More' => 0,
        'Test::Exception' => 0
    },
    test => {
        TESTS => 't/*.t'
    }
);

#-> END

__END__
