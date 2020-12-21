package GithubService;
use strict;
use warnings;
use Service;
use Exporter;

our @ISA = qw( Exporter );

our @EXPORT = qw( fetchRepositoriesFor fetchLanguagesFor );

# Get list of repositories for a user
# https://docs.github.com/en/free-pro-team@latest/rest/reference/repos#list-repositories-for-a-user
sub fetchRepositoriesFor {
    my ($user) = @_;
    return getCall("https://api.github.com/users/$user/repos");
}

# Get list of languages for a repository
# https://docs.github.com/en/free-pro-team@latest/rest/reference/repos#list-repository-languages
sub fetchLanguagesFor {
    my ($user, $repo) = @_;
    return getCall("https://api.github.com/repos/$user/$repo/languages");
}

1;