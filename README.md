# Last.fm last played tracks Rainmeter skin
A Rainmeter skin that displays the last 1, 2, 3, 4, 5, or 10 last scrobbled tracks. This is a fork of "Last.fm Rainmeter Skin VERSION 2.0" (a.k.a. "Watcha listenin' 2") by Blaise.

Credits:
- [Blaise](https://www.deviantart.com/squadrmskin) for ["Last.fm Rainmeter Skin VERSION 2.0"](https://www.deviantart.com/squadrmskin/art/Last-fm-Rainmeter-Skin-VERSION-2-0-590438568).
- [Rochak Shukla](https://www.freepik.com/author/rochakshukla) for the ["Abstract wave halftone background"](https://www.freepik.com/free-vector/abstract-wave-halftone-background_23214995.htm) icon used as a "no album" placeholder image.

Version history:

1.0 / May 13, 2023
- Initial commit.
- Updated the original skin (small version only) to support up to 10 last played tracks.
- Switched track title and artist fields.
- Added a background.
- Unescaped the special characters in song urls.
- Limited the title/artist/album length to 35 characters.
- Replaced the placeholder icon.

1.01 / May 13, 2023
- Increased the displayed character limit for artist and album tags. First release.

1.02 / May 14, 2023
- Made the first track's font color red if it's the "now playing" track or white if it isn't.

Known issues:
- The skin stops loading data after too many manual refreshes. This has been an issue in the original skin as well.
- The username needs to be set for each variant separately. Unfortunately, I don't see how I can resolve this. The original skin asked to input a username 3 times during editing in any variant.

To possibly do:
- Make a right-aligned version.
- Make variants for more tracks (I only have a 1080p display so I can't test all of them)
- Fork different sized versions of the original skin, I only used the small version.
- Looking into the possibility of implementing the "love track" button but it doesn't seem possible w/ my skills and API access level atm.
