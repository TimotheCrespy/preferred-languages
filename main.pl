#!/usr/bin/perl -w
use strict;
use warnings;
use lib "./Services";
use lib "./Validation";
use GithubService;
use Handler;

my %languageFrequencies = ();

# Getting user
my $user = $ARGV[0];

if (!$user) {
	exitWithMessage("Please provide a GitHub username.");
}

# Getting repositories from API
my @repositories = fetchRepositoriesFor($user);

my $repositoriesCount = @repositories;
if ($repositoriesCount == 0) {
	exitWithMessage("The GitHub user doesn't have any public repository.");
}

foreach my $repo (@repositories) {
	my $repoName = $repo->{"name"};

	# Getting languages from API
	my %languages = fetchLanguagesFor($user, $repoName);

	foreach my $name (keys %languages) {
		my $languageFrequency = $languages{$name};
		if ($languageFrequencies{$name}) {
			$languageFrequencies{$name} = $languageFrequencies{$name} + $languageFrequency
		} else {
			$languageFrequencies{$name} = $languageFrequency;
		}
	}
}

my $rank = 1;
foreach my $name (reverse sort { $languageFrequencies{$a} <=> $languageFrequencies{$b} } keys %languageFrequencies) {
    printf "#%s %-12s %s", $rank++, $name, $languageFrequencies{$name};
	print "\n";
}