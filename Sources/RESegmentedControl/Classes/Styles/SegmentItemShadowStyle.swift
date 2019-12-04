//
//  SegmentItemShadowStyle.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/21/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import Foundation
import UIKit

public struct SegmentItemShadowStyle: ShadowStylable {

    public var color: CGColor? = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5).cgColor

    public var opacity: Float = 0.5

    public var offset: CGSize = CGSize(width: 0, height: 2)

    public var radius: CGFloat = 2

    public var path: CGPath? = nil

    public init() { }

    public init(color: CGColor, opacity: Float, offset: CGSize, radius: CGFloat, path: CGPath?) {
        self.color = color
        self.opacity = opacity
        self.offset = offset
        self.radius = radius
    }

}
