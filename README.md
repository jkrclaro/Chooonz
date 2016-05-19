# Chooonz
iOS application for Chooonz using the Swift programming language. This
application is the interface that allows users to request song details from
a web server created in Swift.

# To-Dos
- [x] Add icons (from logomakr.com)
- [x] Add launch image (from logomakr.com)
- [x] Allow user to search for song titles
- [x] Display items in a table view
- [x] Create circular logo for artist image
- [x] Send API requests using Alamofire
- [x] Display YouTube thumbnail
- [x] Play YouTube video
- [x] Use Roboto font
- [ ] Better string filter by taking in to account the position of letters
- [ ] Display user's recent searches
- [ ] Ability to full-screen the YouTube video player

# Cocoa Pods (version 1.0.0)
Ensure you have cocoa pods installed. Refer to this guide https://www.youtube.com/watch?v=oNKVVBN2JN0.

Using a text editor, the developer can edit the <b>Podfile</b> file in
this repository.

To add a new pod, add the pod name and version like below. To get the pod
name and version, check the pod's GitHub repository.
```
target 'Chooonz' do
end

will now become

target 'Chooonz' do
pod 'Alamofire', '~> 3.3'
end
```

To update the version of pod, replace the value after the <b>~></b>
with the latest version.
```
target 'Chooonz' do
pod 'Alamofire', '~> 3.3'
end

will now become

target 'Chooonz' do
pod 'Alamofire', '~> 3.4'
end
```

To implement our new pods, run the following commands.
```
// Go to the directory of this repository using your terminal, e.g.
$ cd Users/johnclaro/<path_to_Chooonz>
$ pod install
```

# Known Errors
> If a red warning saying "No such module 'Alamofire'" is showing up. Try going
to the directory of the repository and open up the Chooonz.xcworkspace

> If you are getting a "Terminating app due to uncaught exception
'NSInvalidArgumentException', reason: '-[UIView loadWithVideoId:]:
unrecognized selector sent to instance 0x7f95ab00ac30'", try changing the
UIViewClass of the YouTube video player in the Identity Inspector tab to
YTPlayerView.

# Using the Roboto font
This application uses the Roboto font. It's currently being used by Google as
the default font for their software such as Google+, Google Play, YouTube and
Google Maps. Kodi also uses this font.

## How to install a font
There should be a Fonts logical group in this repository. In this directory, it
contains many Roboto type fonts such as Roboto-Bold, Roboto-Regular, etc. If
you go to the Chooonz > Build Phases > Copy Bundle Resources and add the custom
fonts that the application will be using.

# Embedding YouTube Videos
## Problem - Using UIWeb Views
You can use UIWebViews and grab the embed code from YouTube to embed a YouTube
video player in our app. However, I found this way to be a horrible experience
as the user can click the YouTube logo and start searching for other videos
inside this UIWebView. This is not an ideal user experience as the
applications' video player should only be limited to playing videos. Also,
there were several constraint issues I encountered when I used this method
since the embed code requires you to hardcode the width and height of the
YouTube player. To overcome this, I used <b>youtube-ios-player-helper</b>.

## Solution - Use youtube-ios-player-helper
Using the pod youtube-ios-player-helper to embed the YouTube player.
The youtube-ios-player-helper has a file called YTPlayerView.h and
YTPlayerView.m. This will allow the application to use <i>YTPlayerView!</i> type.

```
class ChooonzVideoViewController: UIViewController {
    @IBOutlet weak var youtubeVideo: YTPlayerView!
```

The great thing about this pod is that you can use a UIView and simply change
its class to YTPlayerView in the Identity Inspector tab. This will
automatically configure its layout without having to hardcore the height and
width.
