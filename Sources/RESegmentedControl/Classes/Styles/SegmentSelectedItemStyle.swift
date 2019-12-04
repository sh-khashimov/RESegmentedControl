//
//  SegmentSelectedItemStyle.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/22/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import Foundation
import UIKit

public struct SegmentSelectedItemStyle: SegmentSelectedItemStylable {

    public var backgoundColor: UIColor = .darkGray

    public var cornerRadius: CGFloat = 0

    public var borderWidth: CGFloat = 0

    public var borderColor: CGColor?

    public var size: SelectedSegmentSize = .max
    
    public var offset: CGFloat = 0

    public var shadow: ShadowStylable? = nil

    public init(backgoundColor: UIColor, cornerRadius: CGFloat, borderWidth: CGFloat, borderColor: CGColor?, size: SelectedSegmentSize, offset: CGFloat, shadow: ShadowStylable?) {
        self.backgoundColor = backgoundColor
        self.cornerRadius = cornerRadius
        self.borderWidth = borderWidth
        self.borderColor = borderColor
        self.size = size
        self.offset = offset
        self.shadow = shadow
    }

    public init(backgoundColor: UIColor) {
        self.backgoundColor = backgoundColor
    }

    public init() { }
}
