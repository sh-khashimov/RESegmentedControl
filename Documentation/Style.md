# Advanded Style Guide

Since `RESegmentedControl` can be stylized only in code, there are couple of options you can consider to avoid code dublication. The easiest option is to write an extension for `BootstapPreset` and configure it for your needs.

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

A better option is to create a **preset**, while it requires more time and code but is more reusable. 

To create a **preset**, create a `struct` and inherit from the `SegmentedControlPresettable` protocol.

``` Swift
struct DarkPreset: SegmentedControlPresettable
```

`SegmentedControlPresettable` protocol contains three main styles that you need to implement in your **preset**:

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

Initiate and configure styles for your needs. It’s possible to use existing ***styles*** structs that already inherit from `Stylable` protocols.

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

> To learn more see a full [**API Reference**](../docs/index.html), and check out the demo project included in the repository.

