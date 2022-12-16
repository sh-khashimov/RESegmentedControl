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

    public var backgroundColor: UIColor = .darkGray
    
    public var gradientColor: SegmentGradientColor? = nil

    public var cornerRadius: CGFloat = 0

    public var borderWidth: CGFloat = 0

    public var borderColor: CGColor?

    public var size: SelectedSegmentSize = .max
    
    public var offset: CGFloat = 0

    public var shadow: ShadowStylable? = nil

    public init(backgroundColor: UIColor, cornerRadius: CGFloat, borderWidth: CGFloat, borderColor: CGColor?, size: SelectedSegmentSize, offset: CGFloat, shadow: ShadowStylable?, gradientColor: SegmentGradientColor? = nil) {
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        self.borderWidth = borderWidth
        self.borderColor = borderColor
        self.size = size
        self.offset = offset
        self.shadow = shadow
        self.gradientColor = gradientColor
    }

    public init(backgroundColor: UIColor) {
        self.backgroundColor = backgroundColor
    }

    public init() { }
}
