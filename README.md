# Crunchyroll CLI

A CLI tool for browsing and playing anime from [Crunchyroll](https://www.crunchyroll.com).

## Dependencies

* a menu application (recommended: [fzf](https://github.com/junegunn/fzf), [dmenu](http://tools.suckless.org/dmenu/) or [rofi](https://github.com/davatorium/rofi))
* [mpv](https://mpv.io/)
* [streamlink](https://streamlink.github.io/)
* [wget](https://www.gnu.org/software/wget/) - you *probably* already have this installed if you are on GNU/Linux
* [coreutils](https://www.gnu.org/software/coreutils/) - you already have this installed if you are on GNU/Linux
* [devour](https://github.com/salman-abedin/devour) (optional - for window swallowing)
* [youtube-dl](https://github.com/ytdl-org/youtube-dl) (optional - for downloading episodes)
* perl (for one specific command: `perl -l -0777 -ne 'print $1 if /<title.*?>\s*(.*?)\s*<\/title/si')` - you already have this installed if you have git installed

## Installation

Before using any of the following installation methods, make sure to download the above listed dependencies with your package manager. 'Make' is the recommended option because you can easily update by doing a simple `git pull` on your local repository. For Arch [based] users, I may also consider submiting Crunchyroll CLI to the [AUR](https://aur.archlinux.org/) at some point.

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

usage: crunchyroll-cli [OPTIONS] "<anime>"

	In the <anime> field, you may pass the link to a series or an episode or perform a fuzzy search.
	NOTE: when performing a search, it is necessary to use apostrophes or quotation marks otherwise you could end up with something like this:
	`crunchyroll-cli that time` would only search for `time` and not `that time`.

	Below are examples of the correct usage.
	example: crunchyroll-cli "that time"
	example: crunchyroll-cli "https://www.crunchyroll.com/that-time-i-got-reincarnated-as-a-slime"
	example: crunchyroll-cli "https://www.crunchyroll.com/that-time-i-got-reincarnated-as-a-slime/episode-1-the-storm-dragon-veldora-777519"

	Available flags:

	-h	print this help statement and exit

	-v	print the Crunchyroll CLI version and exit

	-d	download instead of streaming

	-D	print a list of the dependencies and exit

	-s	show subtitles in your chosen language (if not specified, no subtitles are shown)
		NOTE: due to the functionality of streamlink, you cannot turn off subtitles *when viewing premium content*; if not specified streamlink will use your system locale.
		example: crunchyroll-cli -s enUS "https://www.crunchyroll.com/that-time-i-got-reincarnated-as-a-slime"

	-S	list available subtitle languages and exit

	-p	play premium content (requires signing into a premium Crunchyroll account - you will be prompted with username and password fields)
		NOTE: you cannot download premium content.

	-w	play an anime from your watchlist (you will be prompted to select an anime) - requires at least two anime in your watchlist for Crunchyroll CLI to act as expected
		example: crunchyroll-cli -w

	-a	add an anime to your watchlist (and the next episode to watch)
		NOTE: you can manually edit the watchlist file as well (default location is ~/.local/share/crunchyroll/watchlist.csv)
		example: crunchyroll-cli -a 40 "https://www.crunchyroll.com/that-time-i-got-reincarnated-as-a-slime"

	-m	specify menu application to use (if not specified, fzf is used)
		You can use any software which can be piped into and out of and used as a menu but it is recommended that you choose between dmenu, rofi and fzf.
		example: crunchyroll-cli -m dmenu "https://www.crunchyroll.com/that-time-i-got-reincarnated-as-a-slime"

Report bugs at https://github.com/koalagang/crunchyroll-cli/issues
```

## TODO

* sort seasons
* view front page
* choose quality
* bulk downloading (youtube-dl --batch-file?)
* possibly other anime sites (a bit like youtube-dl's extractors)??
* add proxy option (should be very easy to do; both streamlink and mpv have proxy flags available)

## Note on Crunchyroll beta site

Crunchyroll is currently working on a new look for the site. It is currently only in beta but once it leaves the beta and the website is updated from its legacy version, Crunchyroll CLI may break due to changes in links and page sources. I will try to fix it once this happens but it won't necessarily be immediate if my life is very busy at the time of this happening.

## Similar projects

* [ani-cli](https://github.com/pystardust/ani-cli)
* [Trackma](https://github.com/z411/trackma)
