package Handler;
use strict;
use warnings;
use Exporter;

our @ISA = qw( Exporter );

our @EXPORT = qw( exitWithMessage );

sub exitWithMessage {
    my ($message) = @_;
    print $message;
    exit;
}

1;