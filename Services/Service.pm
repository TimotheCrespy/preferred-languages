package Service;
use strict;
use warnings;
use LWP::UserAgent;
use HTTP::Request;
use HTTP::Headers;
use JSON;
use Handler;
use Exporter;

our @ISA = qw( Exporter );

our @EXPORT = qw( getCall );

sub getCall {
    my ($url) = @_;
    my $method = "GET";
    my $request = HTTP::Request->new($method, $url);
    my $userAgent = LWP::UserAgent->new;
    $userAgent->ssl_opts("verify_hostname" => 0);
    my $response = $userAgent->request($request);

    if (!$response->is_error) {
        my $jsonResults = JSON->new->utf8->decode($response->content);
        if (ref($jsonResults) eq "ARRAY" ) {
            return @{$jsonResults};
        }
        if (ref($jsonResults) eq "HASH" ) {
            return %{$jsonResults};
        }
    } else {
        exitWithMessage("An error occurred during GET request to $url.");
    }
}

1;