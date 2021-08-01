# Crunchyroll CLI

A CLI tool for browsing and playing anime from [Crunchyroll].

## Dependencies

* mpv
* wget
* devour (optional - for window swallowing)
* youtube-dl (optional - for downloading episodes)
* a menu application (recommended: fzf or dmenu or rofi)
* streamlink (optional - for premium content)

## Installation

Before using any of the following installation methods, make sure to download the above listed dependencies with your package manager.
'Make' is the recommended option because you can easily update by doing a simple `git pull` on your local repository. For Arch [based] users, I may also consider submiting Crunchyroll CLI to the [AUR](https://aur.archlinux.org/) at some point.

### cURL

```sh
$ sudo curl -sL "https://raw.githubusercontent.com/koalagang/crunchyroll-cli/main/crunchyroll-cli" -o /usr/bin/crunchyroll-cli
```

### Make

```sh
$ git clone "https://github.com/koalagang/crunchyroll-cli.git" && cd crunchyroll-cli/ && sudo make install
```
> To update, run `git pull` in your local Crunchyroll CLI repository and reinstall with `sudo make install`.
> To uninstall, run `sudo make uninstall`.

### Manual

Download the script however you wish to, run `chmod +x` on it and then place it anywhere in your `$PATH`.
> You can easily download it to the current directory by doing `wget "https://raw.githubusercontent.com/koalagang/crunchyroll-cli/main/crunchyroll-cli"`

## Usage

```sh
Crunchyroll CLI

Dependencies: mpv, wget, devour (optional - for window swallowing), youtube-dl (optional - for downloading episodes), a menu application (recommended: fzf or dmenu or rofi), streamlink (optional
- for premium content)

usage: crunchyroll-cli [OPTIONS] "<anime>"

        In the <anime> field, you may pass the link to a series or perform a fuzzy search (see `-e` flag for exact episodes).
        Note that, when performing a search, it is necessary to use apostrophes or quotation marks otherwise you could end up with something like this:
        `crunchyroll-cli that time` would only search for `time` and not `that time`

        Below are examples of the correct usage.
        example: crunchyroll-cli "that time"
        example: crunchyroll-cli "https://www.crunchyroll.com/that-time-i-got-reincarnated-as-a-slime"

        Also note that if you are passing an argument into a flag, then order may matter:
        `crunchyroll-cli -pe "https://www.crunchyroll.com/that-time-i-got-reincarnated-as-a-slime/episode-40-the-congress-dances-814679"` would work but
        `crunchyroll-cli -ep "https://www.crunchyroll.com/that-time-i-got-reincarnated-as-a-slime/episode-40-the-congress-dances-814679"` would not work because the link is supposed to be passed into
        the `-e` flag.

        Available flags:

        -h      print this help statement and exit

        -d      download instead of streaming

        -s      show subtitles in your chosen language (if not specified, no subtitles are shown)
                example: crunchyroll-cli -s enUS "https://www.crunchyroll.com/that-time-i-got-reincarnated-as-a-slime"

        -l      list available subtitle languages and exit

        -p      play premium content (requires signing into a premium Crunchyroll account - you will be prompted with username and password fields)
                Note that you cannot download premium content.

        -e      play exact episode (by default, Crunchyroll CLI assumes that the link is the entire series)
                example: crunchyroll-cli -e "https://www.crunchyroll.com/that-time-i-got-reincarnated-as-a-slime/episode-1-the-storm-dragon-veldora-777519"

        -m      specify menu application to use (if not specified, fzf is used)
                you can use any software which can be piped into and out of and used as a menu but it is recommended that you choose between dmenu, rofi and fzf
                example: crunchyroll-cli -m dmenu "https://www.crunchyroll.com/that-time-i-got-reincarnated-as-a-slime"

        -v      print your Crunchyroll CLI version and exit

Report bugs at https://github.com/koalagang/crunchyroll-cli/issues
```

## TODO

* watch lists
* view front page
* choose quality
* bulk downloading (youtube-dl --batch-file?)
* read Crunchyroll manga??
* possibly other anime sites (a bit like youtube-dl's extractors)??

## Note on Crunchyroll beta site

Crunchyroll is currently working on a new look for the site. It is currently only in beta but once it leaves the beta and the website is updated from its legacy version, Crunchyroll CLI may break due to changes in links and page sources. I will try to fix it once this happens but it won't necessarily be immediate if my life is very busy at the time of this happening.

## Similar projects

* [ani-cli](https://github.com/pystardust/ani-cli)
