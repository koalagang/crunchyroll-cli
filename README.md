# Crunchyroll CLI

A CLI tool for browsing and playing anime from [Crunchyroll](https://www.crunchyroll.com).

Crunchyroll CLI is an easy to use commandline tool, written in bash, which allows you to browse and play anime from the website - Crunchyroll (https://crunchyroll.com) - utilising the mpv media player. It aims to provide a feature rich experience for Crunchyroll whilst being incredibly lightweight.

## Dependencies

* a menu application (recommended: [fzf](https://github.com/junegunn/fzf), [dmenu](http://tools.suckless.org/dmenu/) or [rofi](https://github.com/davatorium/rofi))
* [mpv](https://mpv.io/)
* [streamlink](https://streamlink.github.io/)
* [wget](https://www.gnu.org/software/wget/) - you *probably* already have this installed if you are on GNU/Linux
* [coreutils](https://www.gnu.org/software/coreutils/) - you already have this installed if you are on GNU/Linux
* [devour](https://github.com/salman-abedin/devour) (optional - for window swallowing)
* [youtube-dl](https://github.com/ytdl-org/youtube-dl) (optional - for downloading episodes)
* [sfeed](https://codemadness.org/sfeed-simple-feed-parser.html) (optional - for viewing Crunchyroll news)
* perl (for one specific command: `perl -l -0777 -ne 'print $1 if /<title.*?>\s*(.*?)\s*<\/title/si'`) - you already have this installed if you have git installed
* gzip (make dependency) - you *probably* already have this installed if you are on GNU/Linux

## Installation

Before using any of the following installation methods, make sure to download the above listed dependencies with your package manager. 'Make' is the recommended option because you can easily update by doing a simple `git pull` on your local repository and also it installs the manpage.

### cURL

```sh
$ sudo curl -sL "https://raw.githubusercontent.com/koalagang/crunchyroll-cli/main/crunchyroll-cli" -o /usr/bin/crunchyroll-cli
```

### Make
First, if you do not already have it installed on your system, install gzip (it is a make dependency) with your distribution's package manager; it is in pretty much every distro's official repositories.

```sh
$ git clone "https://github.com/koalagang/crunchyroll-cli.git" && sh -c 'cd crunchyroll-cli/ && make'
```
> Remember to do just `make` and not `make install` so that the manpage also gets installed. 
> To update, run `git pull` in your local Crunchyroll CLI repository and reinstall with `make`. 
> To uninstall, run `make uninstall`. 

### Manual

Download the script however you wish to, run `chmod +x` on it and then place it anywhere in your `$PATH`.
You can easily download it to the current directory by doing
```sh
$ wget "https://raw.githubusercontent.com/koalagang/crunchyroll-cli/main/crunchyroll-cli"
```

## Usage

For usage information, input
```sh
$ crunchyroll-cli -h
```
or
```sh
$ man crunchyroll-cli # only works if you installed using Make
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
