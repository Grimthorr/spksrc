#!/usr/bin/perl -w
use strict;
use warnings;
use CGI;
use CGI::Carp qw(fatalsToBrowser warningsToBrowser);

# CGI
my $q = CGI->new;

# Redirect
print $q->redirect("https://".$ENV{SERVER_NAME}.":4200");
