#!/usr/bin/perl
use strict;
use ExtUtils::MakeMaker;
eval 'use ExtUtils::MakeMaker::Coverage';
WriteMakefile (
    'NAME' => 'Devel::SimpleTrace', 
    'VERSION_FROM' => 'lib/Devel/SimpleTrace.pm', 
    'PREREQ_PM' => {
        'Data::Dumper' => 0, 
    }, 
    'PL_FILES' => {}, 
    ($] >= 5.005 ?
      (ABSTRACT_FROM => 'lib/Devel/SimpleTrace.pm', 
       AUTHOR => 'Sébastien Aperghis-Tramoni <sebastien@aperghis.net>') : ()),
);
