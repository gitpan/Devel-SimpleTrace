#!/usr/bin/perl
use strict;
use Module::Build;
Module::Build->new(
    'module_name'       => 'Devel::SimpleTrace', 
    'license'           => 'perl', 
    'dist_author'       => 'S�bastien Aperghis-Tramoni <sebastien@aperghis.net>', 
    'dist_version_from' => 'lib/Devel/SimpleTrace.pm', 
    'requires' => {
    }, 
    'add_to_cleanup'    => [ 'Devel-SimpleTrace-*' ],
)->create_build_script;