# Crunchyroll CLI

A CLI tool for browsing and playing anime from [Crunchyroll](https://www.crunchyroll.com).\
It also partially supports GoGoAnime.vc.

Crunchyroll CLI is an easy to use commandline tool, written in bash, which allows you to browse and play anime from the website - Crunchyroll - utilising the mpv media player. It aims to provide a feature rich experience for Crunchyroll whilst being incredibly lightweight.

<!-- DO NOT EDIT THIS SECTION, INSTEAD RE-RUN dt TO UPDATE -->
- [Dependencies](#dependencies)
- [Installation](#installation)
	- [cURL](#curl)
	- [Make](#make)
	- [Manual](#manual)
- [Usage](#usage)
- [TODO](#todo)
- [Note on Crunchyroll beta site](#note-on-crunchyroll-beta-site)
- [License](#license)
- [Similar projects](#similar-projects)
<!-- END dt generated TOC please keep comment here to allow auto update -->

## Dependencies

* [mpv](https://mpv.io/)
* [fzf](https://github.com/koalagang/crunchyroll-cli)
* [streamlink](https://streamlink.github.io/)
* [wget](https://www.gnu.org/software/wget/) - you *probably* already have this installed if you are on GNU/Linux
* [coreutils](https://www.gnu.org/software/coreutils/) - you already have this installed if you are on GNU/Linux
* [devour](https://github.com/salman-abedin/devour) (optional - for window swallowing); NOTE: if the `-p` (premium) flag is passed then window swallowing is not used
* [youtube-dl](https://github.com/ytdl-org/youtube-dl) (optional - for downloading episodes)
* [sfeed](https://codemadness.org/sfeed-simple-feed-parser.html) (optional - for viewing Crunchyroll news)
* a menu application (optional - recommended: [dmenu](http://tools.suckless.org/dmenu/) or [rofi](https://github.com/davatorium/rofi); you can use these if you wish to make a separate script which utilises Crunchyroll CLI, however, it is recommended for most people to stick to using the default menu app - fzf.)
* perl - you already have this installed if you have git installed
* gzip (make dependency; not necessary if you are installing [manually](#manual) or with [curl](#curl)) - you *probably* already have this installed if you are on GNU/Linux

## Installation

Before using any of the following installation methods, make sure to download the above listed dependencies with your package manager. 'Make' is the recommended option because you can easily update by doing a simple `git pull` on your local repository and also it installs the manpage.

To copy any of the commands shown below to your clipboard, simply hover your cursor over the code block and a clipboard icon will appear to the right-most side - click that and the command will be copied to your clipboard. Now you can just paste that into your terminal emulator with ctrl+shift+v.\
*Easy as pie.* 😋

### cURL

```sh
sudo curl -sL "https://raw.githubusercontent.com/koalagang/crunchyroll-cli/main/crunchyroll-cli" -o /usr/bin/crunchyroll-cli && sudo chmod +x /usr/bin/crunchyroll-cli
```
> To uninstall, just run `sudo rm /usr/bin/crunchyroll-cli`

### Make
First, if you do not already have it installed on your system, install gzip (it is a make dependency) with your distribution's package manager; it is in pretty much every distro's official repositories.

```sh
git clone "https://github.com/koalagang/crunchyroll-cli.git && sh -c 'cd crunchyroll-cli/ && make'
```
> Remember to do just `make` and not `make install` so that the manpage also gets installed.\
> To update, run `git pull` in your local Crunchyroll CLI repository and reinstall with `make`.\
> To uninstall, run `make uninstall`. 

### Manual

Download the script, mark it as executable and then place it anywhere in your `$PATH`.
You can easily do this by navigating to the directory you wish to install it to and then running:
```sh
wget "https://raw.githubusercontent.com/koalagang/crunchyroll-cli/main/crunchyroll-cli" && chmod +x crunchyroll-cli
```

## Usage

For usage information, input:
```sh
crunchyroll-cli -h
```
or
```sh
man crunchyroll-cli
```
(only works if you installed using Make)

or

read `usage.txt` from the `docs` folder in this repository.

## TODO

* sort seasons
* choose quality
* bulk downloading
* watch history
* proxy option (should be very easy to do; both streamlink and mpv have proxy flags available)
* self-updating (i.e. does not require a package manager to receive update)
* reduce required dependencies (there are certain dependencies which don't necessarily need to be required; for example, I could create a built-in menu rather than making fzf a strict dependency - but I could still keep it as an optional dependency, like dmenu and rofi)
* filter out characters - '(person)' - from the search function
* add suport for beta links (e.g. `https://beta.crunchyroll.com/watch/GJWU2X420/judgment`)
* expand GoGoAnime support

## Note on Crunchyroll beta site

Crunchyroll is currently working on a new look for the site. It is currently only in beta but once it leaves the beta and the website is updated from its legacy version, Crunchyroll CLI is likely to break due to changes in links and page sources. I will try to fix it when this happens but it won't necessarily be immediate if my life is very busy at the time of this happening.\
In the meantime, you can use the `-G` flag which allows you to stream from GoGoAnime.vc. See the [Usage](#usage) for more info.

## License

crunchyroll-cli Copyright (C) 2021 koalagang; This program comes with ABSOLUTELY NO WARRANTY;\
This is free software, and you are welcome to redistribute it under certain conditions.\
For more details please refer to https://github.com/koalagang/crunchyroll-cli/blob/main/LICENSE.

Crunchyroll CLI also uses parts of other libre software. For details regarding that, see `LICENSE-NOTICE.md` from the `docs` folder in this repository.

## Similar projects

* [ani-cli](https://github.com/pystardust/ani-cli)
* [Trackma](https://github.com/z411/trackma)
