# Last.fm last played tracks Rainmeter skin
A Rainmeter widget that displays up to 18 last scrobbled tracks. This is a fork of "Last.fm Rainmeter Skin VERSION 2.0" (a.k.a. "Watcha listenin' 2") by Blaise.

### Credits:
- [Blaise](https://www.deviantart.com/squadrmskin) for [Last.fm Rainmeter Skin VERSION 2.0](https://www.deviantart.com/squadrmskin/art/Last-fm-Rainmeter-Skin-VERSION-2-0-590438568); CC BY-NC-SA 3.0.
- [SVG Repo](https://www.svgrepo.com) for [Music Note Symbol In A Rounded Square 2](https://www.svgrepo.com/svg/151215/music-note-symbol-in-a-rounded-square); CC0.
- [Deathcrafter](https://github.com/deathcrafter) for [ColorPickerUI](https://github.com/deathcrafter/ColorPickerUI); CC BY-NC-SA 3.0.
- balala for the [Lua code for converting the timestamps to local time](https://forum.rainmeter.net/viewtopic.php?t=27547&sid=2c92245dc02acee691f38e567e150788&start=10#p143062), modified by me.

ColorPickerUI uses the following resources:
- [CursorColor Plugin](https://forum.rainmeter.net/viewtopic.php?t=23375) by [jsmorley](https://www.rainmeter.net/).
- [Mouse Plugin](https://github.com/NighthawkSLO/Mouse.dll) by [NightHawkSLO](https://github.com/NighthawkSLO).
- Segoe Fluent Icons font.

Formerly used resources:
- ["Abstract wave halftone background"](https://www.freepik.com/free-vector/abstract-wave-halftone-background_23214995.htm) icon by [Rochak Shukla](https://www.freepik.com/author/rochakshukla).

### Requirements:
- Tested in Rainmeter v4.5, not sure if it will run in older versions.

### How to use:
- Middle-click the first track image or title to set up the username, the number of displayed tracks, the background and text colors/transparency, and the alignment of measures.
- Click the username (if it's set to be displayed) to open your profile page in browser.
- Click the track title or album cover to open the track page.
- Click the artist name or album name to open the artist or album page respectively.

### Known issues:
- Displaying more than 5 tracks might not be very stable, use those options at your own risk.
- The code has become increasingly unstable, been experiencing Rainmeter crashes after refreshing the skin and album covers loading incorrectly or failing to load until Rainmeter restart. May work on a code clean-up sometime in the future.
- The skin stops loading data after too many manual refreshes. This is an issue in the original skin as well. It appears to be a WebParser bug.
- Album images aren't loading at certain times, not sure what's causing it atm.
- The skin returns a "url is empty" error for album cover measures when loading an albumless track, I've managed to get them to not appear on every single tick but couldn't get rid of them entirely yet. [May have been fixed in 1.1.3 update]
- The skin returns a "Regex matching error" when opening the skin without a username set (i.e. on first launch), couldn't get rid of it at the moment.
- The config menu could be better but I'm not much of a designer, might rework it later.
- Some other special characters in urls may remain escaped, have only patched those I noticed.

### Ideas for possible future versions:
- Clean up the code.
- Make the skin scaleable.
- Variants for other track counts (I only have 1080p displays available so I can't test the variants that exceed that height).
- Looking into the possibility of implementing the "love track" button but it doesn't seem possible w/ my current skill and API access level.

### Version history:

1.1.4.3 / April 18, 2024
- Forked the color picker UI and updated it to version 2.1.2.
- - Now when changing element colors the current color is loaded on picker skin initialization instead of a pre-set one; also fixed a typo in Functions.lua.

1.1.4.2 / Mar 29, 2024
- Fixed vertical mobility issues (made vertical coordinates of hideable elements relative).

1.1.4 / August 7, 2023
- Added an option to disable timestamps
- Added an option to hide the username
- Moved the username setup to the config skin, the default username field now gives the directions to the config for full setup.
- Fixed padding for the artist tag #3.
- The "number of displayed tracks" and "meter alignment" buttons are now properly changing colors on mouseover.
- Replaced the lua script for timezone conversion with an in-config method which converts from UNIX timestamps so now the seconds are displayed.
- Attempted to optimize the code somewhat, it's become bloated and unstable after all the bells and whistles I've added over time.

1.1.3 / July 25, 2023
- Added timestamps and a lua script to convert them from UTC to the computer's local timezone.
- Some small code and design tweaks (added lookahead assertions to some of the regexes to reduce errors, added horizontal padding for the text meters so I would need less variables to place them properly (but added more variables for the timestamps), adjusted the vertical coordinates of the meters).

1.1.2 / May 26, 2023
- Made an option to make the widget right-aligned.
- Fixed the username variable being written into the main config instead of Variables.inc.

1.1.1.1 / May 25, 2023
- Changed the placeholder icon to an image under a more free license.

1.1.1 / May 25, 2023
- Code cleanup, got rid of deprecated commands.
- Reduced the number of main skin refreshes. (Tested again making the main skin to redraw on displayed tracks change instead of refreshing and it seems to disable/enable measures correctly this time around. Maybe I didn't write the DynamicVariables=1 to all affected measures the last time. Also had to set the UpdateDivider option for each meter to stop them loading data when hidden.)
- Made another, unsuccessful, attempt to get rid of the "url is empty" error.
- Changed the version numbering method.

1.1 / May 24, 2023
- Made text colors customizable.
- Moved the ColorPickerUI config into the Config folder.
- Some other minor changes.
- Version bump to 1.1 because I didn't think to do that with the previous version but I really had to.

1.07 / May 23, 2023
- Reworked the skin, now it has only one variant with a config skin where you can choose how many tracks to show and the background color. See "how to use" for more information. Older versions with multiple variants are still available in Releases but I don't plan to update them further.

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
- Split the main regex into smaller regexes for each measure, for optimization. Since this reduces the string indices this might also allow to add support for more tracks in the future.
- Reduced the number of "url is empty" errors (See "Known Issues").

1.031 / May 18, 2023
- Bug fix (Missing album art in track 12).

1.03 / May 18, 2013
- Made variants for 15, 16, 17 tracks (1080p screen minus taskbar), and 18 tracks (the maximum that fits into a 1080p screen). Not sure if I can do more tracks since there's no way for me to test it plus there's a limit in the WebParser plugin for the number of parsed strings and I have no knowliedge of LUA.
- The skin now fetches higher res album images.
- Changed the title/album/artist length limiting method from a string length regex to a meter width limit with string clipping.

1.02 / May 14, 2023
- The first track's font color is now red if it's currently scrobbling.

1.01 / May 13, 2023
- Increased the displayed character limit for artist and album tags.
- Initial release.

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

### Backstory:
- So basically I used to have Last.fm opened in a separate browser window at all times to be sure that the music is scrobbling correctly (and to remind myself of what I listened to recently) but the page constantly stopped updating the information and that annoyed me to no end. Recently I've been reminded of Rainmeter's existence and that I downloaded a last.fm "now playing" skin for it a while ago; I installed it and it was a good one but not exactly what I needed. After I looked at the code to set a background (since I needed the widget in on top of other windows instead of on the desktop) I realized that it's possible for me to make a version for more displayed tracks and I did exactly that. If you needed such a widget, enjoy!
