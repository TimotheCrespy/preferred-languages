# preferred-languages

This script lets you know which are the preferred coding languages of a given GitHub user.

## Installation

Copy the source code wherever in your computer.

This script uses Perl (https://www.perl.org/).

You may wish to install some Perl dependencies like:
- JSON (https://metacpan.org/release/MAKAMAKA/JSON-2.07)

You may also wish to give the script the correct permissions:
```bash
chmod 700 preferred_languages
```

## Usage

```bash
cd [source_code_directory]
./preferred_languages [github_username]
```

Example:
```bash
cd Sites/preferred-languages
./preferred_languages timothecrespy

#1 PHP          1748993
#2 Vue          42230
#3 JavaScript   6399
#4 HTML         1839
#5 SCSS         423
```

## Troubleshooting

### Internet connection

As the program calls th GitHub API (https://docs.github.com/en/free-pro-team@latest/rest), you must be connected to internet.

### GitHub API rate limit

As a non-registered user, the GitHub API is still free and accessible, but with a rate imit of 60 calls per hour (https://docs.github.com/en/free-pro-team@latest/rest/overview/resources-in-the-rest-api#rate-limiting). You may therefore encounter the following error message:
```bash
cd Sites/preferred-languages
./preferred_languages timothecrespy

An error occurred during GET request to https://api.github.com/users/timothecrespy/repos.
```

### Username not provided

Providing a GitHub username is compulsory.
```bash
cd Sites/preferred-languages
./preferred_languages

Please provide a GitHub username.
```

### User does not have public repositories

It may happen that the GitHub user does not have any public repository.
```bash
cd Sites/preferred-languages
./preferred_languages Minitsonga

The GitHub user does not have any public repository.
```

## Interview with the developer

### Why did you choose Perl?

> I am more of a high-level technologies developer (web development) than a low-level one (bash scripting). Hence the simplicity of the script. The Perl language came to my mind because I do have a little experience with it: in 2013 during my final year internship at Atos Worldine. I had to fetch data from a database with SQL queries, then export the results in CSV.

### What do you know about TDD?

> I know about TDD for a long time know, but am applying it for just about 2 years. My ignorange about Perl testing and Perl testing frameworks made me choose not to use TDD for this exercise. That's also why there's no automated tests.

### Are you proud of your code?

> I'm quite proud of it as it took me less than 2 hours to program everything (excluding this documentation) with a language I did not code with for more than 6 years. It's working well with some SOLID principles respected (externalisation of services, factorisation of code, etc.). However, it is obviously not perfect: I chose not to spend more time on the exercise.
