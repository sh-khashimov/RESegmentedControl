
# RESegmentedControl (In progress...)

[![CI Status](https://img.shields.io/travis/sh-khashimov/RESegmentedControl.svg?style=flat)](https://travis-ci.org/sh-khashimov/RESegmentedControl)
[![Version](https://img.shields.io/cocoapods/v/RESegmentedControl.svg?style=flat)](https://cocoapods.org/pods/OKSegmentedControl)
[![License](https://img.shields.io/cocoapods/l/RESegmentedControl.svg?style=flat)](https://cocoapods.org/pods/OKSegmentedControl)
[![Platform](https://img.shields.io/cocoapods/p/RESegmentedControl.svg?style=flat)](https://cocoapods.org/pods/OKSegmentedControl)

Customizable Segmented Control.

## Features

- Customizable
- Adaptive and dynamic layout
- Can load images from remote server
- Layout-Driven UI
- Natural animations

# Getting Started

- [**How to use**](#how-to-use)
- [**Layout Types**](#layout-types)
- [**Actions**](#actions)
- [**Presets and Styles**](#presets-and-styles)


## How to use

Here is a simple steps to use Segmented Control.

- Specify list of string that will be shown in segmented control:

``` Swift
/// List of items
let items = ["safari", "chrome", "firefox"]
```
- Create a Segmented Control using storyboard and @IBOutlet to your ViewController:

![storyboard](Images/storyboard.png)

``` Swift
/// Segmented Control
@IBOutlet weak var segmentedControl: SegmentedControl!
```
Or create a Segmented Control programmatically:

``` Swift
let segmentedControl = SegmentedControl(frame: CGRect(x: 0, y: 0, width: 200, height: 44))
self.view.addSubview(segmentedControl)
// Add segmentedControl Layouts…
```
- Create list of segment items:

``` Swift
// List of segment items
var segmentItems: [SegmentModel] {
	return items.map({ SegmentModel(title: $0, imageName: $0) })
}
```
- Create a Preset to style the Segmented Control:

``` Swift
// Segmented Control Styles Preset
let preset = BootstapPreset(backgroundColor: .white, selectedBackgroundColor: .black)
```
- Configure your Segmented Control with items and preset: 

``` Swift
// Segmented Control configuration method
segmentedControl.configure(segmentItems: segmentItems, preset: preset)
```
> *Still have questions, take a look to the example project.*

## Layout Types

<img align="right" src="./Images/1.png" width="360"/>

It’s possible to show content in three way. `Segmented Control` could be show with text only, image inly or text with image.

- To show titles, initiate a `SegmentModel` with `title` variable:

``` Swift
let segmentsItem: [SegmentModel] = [SegmentModel(title: “Title”)]
```
- To show images, initiate a `SegmentModel` with `imageName` variable:

``` Swift
let segmentsItem: [SegmentModel] = [SegmentModel(imageName: “imageNameInAseetCatalog”)]
```
or `imageUrl` variable to load image from remote server:
``` Swift
let imageUrl = “https://domain.com/image.png”
let segmentsItem: [SegmentModel] = [SegmentModel(imageUrl: imageUrl)]
```
- To show titles and images, initiate a `SegmentModel` with `title` and `imageName`  or `imageUrl` variable:

``` Swift
let segmentsItem: [SegmentModel] = [SegmentModel(title: “Title”, imageName: “imageNameInAseetCatalog”)]

// Image remote location url
let imageUrl = “https://domain.com/image.png”
let segmentsItem: [SegmentModel] = [SegmentModel(title: “Title”, imageUrl: imageUrl)]
```
> *For more information, see `BasicExampleViewController` in the example project.*

## Actions

<img align="right" src="./Images/3.png" width="360"/>

Here is the list of available API:

- Dynamically adds item:
``` Swift
func addItem(_ item: SegmentModel, atIndex index: Int? = nil)
```

- Dynamically removes item:
``` Swift
func removeItem(atIndex index: Int? = nil)
```

- Returns segment items count:
``` Swift
var segmentItemsCount: Int
```

- Returns or dynamically changes selected index:
``` Swift
var selectedSegmentIndex: Int
```

- Deselects selected segment item:
``` Swift
func deselect()
```

> *For more information, see `ActionViewController` in the example project.*

## Presets and Styles

<img align="right" src="./Images/2.png" width="360"/>

`SegmentControl` supports a wide range of customization appearance. It is also possible to apply ready-made presets of styles or create your own preset.

Currently 4 presets are available:
- iOS7Preset - Stylizes to iOS7 system style.

``` swift
struct iOS7Preset: SegmentedControlPresettable
```
- iOS13Preset - Stylizes to iOS13 system style.

``` swift
struct iOS13Preset: SegmentedControlPresettable
```
- MaterialPreset - Stylizes to Material style.

``` swift
struct MaterialPreset: SegmentedControlPresettable
```

- BootstapPreset - Preset with minimal pre-stylization, designed to customize the preset to fit your needs.

``` swift
struct BootstapPreset: SegmentedControlPresettable
```

> *For more information, see `PresetsViewController` in the example project.*



To learn more about how to create a preset, follow the [**Creating a Preset Guide**](/Documentation/Preset.md).


## Installation

To learn more see a full [**API Reference**](https://kean.github.io/Nuke/reference/8.0/index.html), and check out the demo project included in the repository. When you are ready to install, follow the [**Installation Guide**](/Documentation/Installation.md). See [**Requirements**](#h_requirements) for a list of supported platforms.

### Insparation

- [WWDC 2018: Adding Delight to your iOS App](https://developer.apple.com/videos/play/wwdc2018/233)



<a name="h_requirements"></a>
# Requirements


| App name              | Swift             | Xcode              | Platforms                                         |
|-------------------|-------------------|--------------------|---------------------------------------------------|
| App name 0.5 - current version    | Swift 5.0 – 5.1   | Xcode 10.2 – 11    | iOS 9.0  |

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## Author

Sherzod Khashimov

- [**https://github.com/gmarm**](https://github.com/gmarm)
- [**https://twitter.com/gmarmas**](https://twitter.com/gmarmas)
- [**https://www.linkedin.com/in/gmarm**](https://www.linkedin.com/in/gmarm)
- [**gmarmas@gmail.com**](malito:gmarmas@gmail.com)

## License

OKSegmentedControl is available under the MIT license. See the LICENSE file for more info.
