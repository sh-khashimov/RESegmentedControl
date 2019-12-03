## Installation

### Swift Package Manager

[Swift Package Manager](https://swift.org/package-manager/) is a dependency manager built into Xcode.

If you are using Xcode 11 or higher, go to **File / Swift Packages / Add Package Dependency...** and enter package repository URL **https://github.com/???/Name.git**, then follow the instructions.

To remove the dependency, select the project and open **Swift Packages** (which is next to **Build Settings**). You can add and remove packages from this tab.

> Swift Package Manager can also be used [from the command line](https://swift.org/package-manager/).

### CocoaPods

`Name` is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```
pod "Name"
```

### Submodule

If you don't use CocoaPods, you can still add `Name ` as a submodule, drag and drop `Name.xcodeproj` into your project, and embed `Name.framework` in your target.

- Drag `Name.xcodeproj` to your project
- Select your app target
- Click the `+` button on the `Embedded binaries` section
- Add `Name.framework` (for `WatchOS 2` apps, use `NameWatch.framework`)??

### Manual

You can directly drag and drop the needed files into your project, but keep in mind that this way you won't be able to automatically get all the latest `Carlos` features (e.g. new files including new operations).

The files are contained in the `Name` folder.

If you want to integrate `Name` in a WatchOS 2 app, please don't include the file `MemoryWarning.swift`.???