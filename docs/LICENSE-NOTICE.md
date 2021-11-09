# External source code use
If at any point I use source code from other scripts which are under a copyleft license, I will leave a notice here detailing what part of what software I took and if I modified it in anyway.

## ani-cli

[ani-cli](https://github.com/pystardust/ani-cli) uses GPLv3.\
I copied the 'get_links' function from version f5ef3e8cde263529b068bb47a63bd8a824ef6bfb of this script and then modified it slightly.\
```sh
# Original
get_links () {
	# get the download page url
	anime_id=$1
	ep_no=$2

	dpage_url=$(
	curl -s "https://gogoanime.vc/$anime_id-episode-$ep_no" |
	sed -n -E '
		/^[[:space:]]*<li class="dowloads">/{
		s/.*href="([^"]*)".*/\1/p
		q
		}')

	curl -s "$dpage_url" |
	sed -n -E '
		/^[[:space:]]*href="([^"]*\.mp4)".*/{
		s/^[[:space:]]*href="([^"]*\.mp4)".*/\1/p
		q
		}
		'
}

# Modified version
sed -n -E '
    /^[[:space:]]*<li class="dowloads">/{
    s/.*href="([^"]*)".*/\1/p
    q
    }' | xargs -I% wget -qO- robots=off -U mozilla --no-dns-cache --no-cache '%' |
sed -n -E '
        /^[[:space:]]*href="([^"]*\.mp4)".*/{
        s/^[[:space:]]*href="([^"]*\.mp4)".*/\1/p
        q
        }
        ' | xargs -I% $swallow mpv '%'
```
