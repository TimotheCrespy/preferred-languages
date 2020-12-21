# preferred-languages

This script lets you know which are the preferred coding languages of a given GitHub user.

## Installation

Copy the source code wherever in your computer.

You may wish to install some dependencies like:
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

### Username not provided

Providing a GitHub username is compulsory.
```bash
cd Sites/preferred-languages
./preferred_languages
Please provide a GitHub username.
```

### User does

It may happen that the GitHub user does not have any public repositories.
```bash
cd Sites/preferred-languages
./preferred_languages Minitsonga
The GitHub user does not have any public repository.
```