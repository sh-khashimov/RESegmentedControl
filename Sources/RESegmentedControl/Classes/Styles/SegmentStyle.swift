//
//  SegmentStyle.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/22/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import Foundation
import UIKit

public struct SegmentStyle: SegmentStylable {

    public var size: SegmentedControlSize = .maxHeight

    public var clipsToBounds: Bool = false

    public var borderWidth: CGFloat = 0

    public var borderColor: CGColor? = nil

    public var cornerRadius: CGFloat = 0

    public var spacing: CGFloat = 0
    
    public var contentWidthType: SegmentContentWidthType = .dynamic

    public init(size: SegmentedControlSize, clipsToBounds: Bool, borderWidth: CGFloat, borderColor: CGColor?, cornerRadius: CGFloat, spacing: CGFloat) {
        self.size = size
        self.clipsToBounds = clipsToBounds
        self.borderWidth = borderWidth
        self.borderColor = borderColor
        self.cornerRadius = cornerRadius
        self.spacing = spacing
    }

    public init() { }
}
