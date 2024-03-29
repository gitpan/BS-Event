use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'BS::Event',
    AUTHOR              => 'Robin Redeker <elmex@x-paste.de>',
    LICENSE             => 'perl',
    VERSION_FROM        => 'lib/BS/Event.pm',
    ABSTRACT_FROM       => 'lib/BS/Event.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More'   => 0,
        'Scalar::Util' => 0,
    },
    dist                => {
       COMPRESS => 'gzip -9f',
       SUFFIX   => 'gz',
       PREOP => 'pod2text lib/BS/Event.pm | tee README >$(DISTVNAME)/README; chmod -R u=rwX,go=rX . ;',
    },
    clean               => { FILES => 'BS-Event-*' },
);
