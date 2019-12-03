# Advanded Style Guide

If the project uses a stylized **Segmented Control** in many places, there are two options for implementing your style with `SegmentedControl`. The first and easiest option is to write an extension for `BootstapPreset` and configure it for your needs.

``` Swift
extension BootstapPreset {
    mutating func configure() {
        self.segmentItemBorderWidth = 1
        self.segmentItemBorderColor = .gray

        self.textFont = UIFont.systemFont(ofSize: 11, weight: .bold)
        self.selectedTextFont = UIFont.systemFont(ofSize: 11, weight: .bold)
    }
}

//ViewController
var preset = BootstapPreset(backgroundColor: .white, selectedBackgroundColor: .red)
preset.configure()

segmentedControl.configure(segmentItems: items, preset: preset)
```

### Creating a Preset

The second option requires more time and code but is a more reusable option. To implement the second method, you need to create your own preset.

To create a Preset, inherit from the `SegmentedControlPresettable` protocol.

``` Swift
struct DarkPreset: SegmentedControlPresettable
```

`SegmentedControlPresettable` protocol contains three main style that you need implament in your preset:
``` Swift
struct DarkPreset: SegmentedControlPresettable {

    /// Segmented control style
    public var segmentStyle: SegmentStylable

    /// Segment item style
    public var segmentItemStyle: SegmentItemStylable

    /// Selected segment item style
    public var segmentSelectedItemStyle: SegmentSelectedItemStylable

}
```

Initialize and configure style for your needs. It’s possible to use existed *Style* structs that already inherit from `Stylable` protocols.

``` Swift
import UIKit

public struct DarkPreset: SegmentedControlPresettable {

    /// Segmented control style
    public var segmentStyle: SegmentStylable

    /// Segment item style
    public var segmentItemStyle: SegmentItemStylable

    /// Selected segment item style
    public var segmentSelectedItemStyle: SegmentSelectedItemStylable

    public init(backgroundColor: UIColor = .white,
                selectedBackgroundColor: UIColor = .yellow) {
        segmentStyle = SegmentStyle()
        segmentItemStyle = SegmentItemStyle(backgroundColor: backgroundColor)
        segmentSelectedItemStyle = SegmentSelectedItemStyle(backgoundColor: selectedBackgroundColor)
    }

}
```

> *For more information, see `BootstapPreset` and `MaterialPreset` in the demo project.*

Then use your preset in `SegmentedControl`:

``` Swift
//ViewController
let preset = DarkPreset(backgroundColor: .white, selectedBackgroundColor: .red)
segmentedControl.configure(segmentItems: items, preset: preset)
```

> To learn more see a full [**API Reference**](https://kean.github.io/Nuke/reference/8.0/index.html), and check out the demo project included in the repository.

