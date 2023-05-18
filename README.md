# Last.fm last played tracks Rainmeter skin
A Rainmeter skin that displays the last scrobbled tracks, with variants for up to 18 tracks. This is a fork of "Last.fm Rainmeter Skin VERSION 2.0" (a.k.a. "Watcha listenin' 2") by Blaise.

Credits:
- [Blaise](https://www.deviantart.com/squadrmskin) for ["Last.fm Rainmeter Skin VERSION 2.0"](https://www.deviantart.com/squadrmskin/art/Last-fm-Rainmeter-Skin-VERSION-2-0-590438568).
- [Rochak Shukla](https://www.freepik.com/author/rochakshukla) for the ["Abstract wave halftone background"](https://www.freepik.com/free-vector/abstract-wave-halftone-background_23214995.htm) icon used as a "no album" placeholder image.

Version history:

1.031 / May 18, 2023
- Bug fix (Missing album art in track 12).

1.03 / May 18, 2013
- Made variants for 15, 16, 17 tracks (1080p screen minus taskbar), and 18 tracks (maximum that fits into a 1080p screen). Not sure if I can do more tracks since there's no way for me to test it plus there's a limit in the WebParser plugin for the number of parsed strings.
- The skin now parses higher res album images.
- Changed the title/album/artist length limiting method from a string length regex to a meter width limit with string clipping.

1.02 / May 14, 2023
- Made the first track's font color red if it's the "now playing" track or white if it isn't.

1.01 / May 13, 2023
- Increased the displayed character limit for artist and album tags. First release.

1.0 / May 13, 2023
- Initial commit. Changes from the original skin:
- Updated the original skin (small version only) to support up to 10 last played tracks.
- Switched track title and artist fields.
- Added a background.
- Unescaped the special characters in track urls.
- Limited the title/artist/album length to 35 characters.
- Replaced the placeholder icon.
- Changed the first track's title font color to red.

Known issues:
- The skin stops loading data after too many manual refreshes. This has been an issue in the original skin as well. It appears to be a WebParser bug.
- The username needs to be set for each variant separately. Unfortunately, I don't see how I can resolve this. The original skin asked to input a username 3 times during editing in any variant, for each variant.
- The 15, 16, 17 and 18 tracks versions might take more time to load the album images.

To potentially do:
- Make a right-aligned version.
- Make variants for other track counts (I only have 1080p displays so I can't test the variants that exceed that height)
- Fork different sized versions of the original skin, I only used the small version.
- Looking into the possibility of implementing the "love track" button but it doesn't seem possible w/ my skill and API access level atm.
