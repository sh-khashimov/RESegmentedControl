//
//  BootstapPreset.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/22/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import Foundation
import UIKit

public struct BootstapPreset: SegmentedControlPresettable {

    public var segmentStyle: SegmentStylable
    public var segmentItemStyle: SegmentItemStylable
    public var segmentSelectedItemStyle: SegmentSelectedItemStylable

    public init(backgroundColor: UIColor = .white,
                selectedBackgroundColor: UIColor = .yellow,
                textColor: UIColor = .darkGray,
                tintColor: UIColor = .darkGray,
                selectedTextColor: UIColor = .black,
                selectedTintColor: UIColor = .black) {
        segmentStyle = SegmentStyle()
        segmentItemStyle = SegmentItemStyle(backgroundColor: backgroundColor, textColor: textColor, tintColor: tintColor, selectedTextColor: selectedTextColor, selectedTintColor: selectedTintColor)
        segmentSelectedItemStyle = SegmentSelectedItemStyle(backgroundColor: selectedBackgroundColor)
    }

}
