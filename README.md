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
- [ ] Play YouTube video
- [x] Use Roboto font
- [ ] Better string filter by taking in to account the position of letters
- [ ] Display user's recent searches

# Cocoa Pods
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
> If a red warning saying "No such module 'Alamofire'" is showing up. Go to
the directory of the repository and open up the Chooonz.xcworkspace
