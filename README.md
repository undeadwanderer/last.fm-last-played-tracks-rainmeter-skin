# Last.fm last played tracks Rainmeter skin
A Rainmeter skin that displays the last scrobbled tracks, with variants for up to 18 tracks. This is a fork of "Last.fm Rainmeter Skin VERSION 2.0" (a.k.a. "Watcha listenin' 2") by Blaise.

Credits / Used resources:
- [Blaise](https://www.deviantart.com/squadrmskin) for ["Last.fm Rainmeter Skin VERSION 2.0"](https://www.deviantart.com/squadrmskin/art/Last-fm-Rainmeter-Skin-VERSION-2-0-590438568).
- [Rochak Shukla](https://www.freepik.com/author/rochakshukla) for the ["Abstract wave halftone background"](https://www.freepik.com/free-vector/abstract-wave-halftone-background_23214995.htm) icon used as a "no album" placeholder image.
- [Deathcrafter](https://github.com/deathcrafter) for [ColorPickerUI](https://github.com/deathcrafter/ColorPickerUI).

ColorPickerUI uses:
- [CursorColor Plugin](https://forum.rainmeter.net/viewtopic.php?t=23375) by [jsmorley](https://www.rainmeter.net/).
- [Mouse Plugin](https://github.com/NighthawkSLO/Mouse.dll) by [NightHawkSLO](https://github.com/NighthawkSLO).
- Segoe Fluent Icons font.

Requirements:
- Tested in Rainmeter v4.5, not sure if it will run in older versions.

How to use:
- Middle-click the "Click here to set the username, then refresh the skin." text to set the last.fm username.
- Middle-click the first track image or title to change the number of displayed tracks and background color/transparency.
- Click the username to go to the profile page.
- Click the track title or album cover to go to the track page.
- Click on artist name or album name to go to the artist or album page respectively.

Version history:

1.07 / May 23, 2023
- The skin now has only one variant with a config skin where you can choose how many tracks to show and the background cover. See "how to use" for more information.

1.061 / May 23, 2023
- Changed the click actions for username and the first album color, see "How to use" for more information.

1.06 / May 23, 2023
- Moved the username and background color values into a separate config file.
- Added a background color selection menu.

1.05 / May 22, 2023
- Added artist/album/track links to the corresponding fields.
- Added a "View profile" link.

1.04 / May 22, 2023
- Stopped the skin from downloading a new image every tick if the image url hasn't changed from the previous tick.
- Split the main regex into smaller regexes for each measure, for optimization. Since this refuces the string indices this might also allow to add support for more tracks in the future.
- Reduced the number of "url is empty" errors (See "Known Issues").

1.031 / May 18, 2023
- Bug fix (Missing album art in track 12).

1.03 / May 18, 2013
- Made variants for 15, 16, 17 tracks (1080p screen minus taskbar), and 18 tracks (the maximum that fits into a 1080p screen). Not sure if I can do more tracks since there's no way for me to test it plus there's a limit in the WebParser plugin for the number of parsed strings and I have no knowliedge of LUA.
- The skin now fetches higher res album images.
- Changed the title/album/artist length limiting method from a string length regex to a meter width limit with string clipping.

1.02 / May 14, 2023
- Made the first track's font color red if it's the "now playing" track or white if it isn't.

1.01 / May 13, 2023
- Increased the displayed character limit for artist and album tags. First release.

1.0 / May 13, 2023
- Initial commit.
- Changes from the original skin:
  - Updated the original skin (small version only) to support up to 10 last played tracks.
  - Switched track title and artist fields.
  - Added a background.
  - Unescaped the special characters in track urls.
  - Limited the title/artist/album length to 35 characters.
  - Replaced the placeholder icon.
  - Changed the first track's title font color to red.

Known issues:
- The skin stops loading data after too many manual refreshes. This has been an issue in the original skin as well. It appears to be a WebParser bug.
- The variants with more than 5 tracks are not very stable, use them at your own risk.
- The skin returns a "url is empty" error for album cover measures when loading an albumless track, I've managed to get them to not appear on every single tick but couldn't get rid of them entirely yet.

To potentially do:
- Merge all variants into a single configurable variant.
- Switch around mouse actions in the username/"View Profile"/album cover meters.
- Make a right-aligned version.
- Make variants for other track counts (I only have 1080p displays available so I can't test the variants that exceed that height)
- Fork different sized versions of the original skin, I only used the small version. Maybe make a smaller sized version.
- Looking into the possibility of implementing the "love track" button but it doesn't seem possible w/ my skill and API access level atm.
