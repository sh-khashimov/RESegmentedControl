//
//  SegmentItemStyle.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/22/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import Foundation
import UIKit

public struct SegmentItemStyle: SegmentItemStylable {

    public var textColor: UIColor = .white

    public var tintColor: UIColor = .white

    public var selectedTextColor: UIColor = .yellow

    public var selectedTintColor: UIColor = .yellow

    public var backgroundColor: UIColor = .black
    
    public var gradientColor: SegmentGradientColor? = nil

    public var borderWidth: CGFloat = 0

    public var borderColor: CGColor?

    public var font: UIFont = UIFont.systemFont(ofSize: 11, weight: .semibold)

    public var selectedFont: UIFont? = UIFont.systemFont(ofSize: 11, weight: .bold)
    
    public var textAlignment: NSTextAlignment? = .center
    
    public var selectedTextAlignment: NSTextAlignment? = .center

    public var imageHeight: CGFloat = 15

    public var imageRenderMode: UIImage.RenderingMode = .automatic

    public var spacing: CGFloat = 5

    public var cornerRadius: CGFloat = 0

    public var shadow: ShadowStylable?

    public var separator: SeparatorStylable?

    public var axis: NSLayoutConstraint.Axis = .horizontal

    public init(textColor: UIColor, tintColor: UIColor, selectedTextColor: UIColor, selectedTintColor: UIColor, backgroundColor: UIColor, borderWidth: CGFloat, borderColor: CGColor?, font: UIFont, selectedFont: UIFont, imageHeight: CGFloat, imageRenderMode: UIImage.RenderingMode, spacing: CGFloat, cornerRadius: CGFloat, shadow: ShadowStylable?, separator: SeparatorStylable?, axis: NSLayoutConstraint.Axis) {
        self.textColor = textColor
        self.tintColor = tintColor
        self.selectedTextColor = selectedTextColor
        self.selectedTintColor = selectedTintColor
        self.backgroundColor = backgroundColor
        self.borderWidth = borderWidth
        self.borderColor = borderColor
        self.font = font
        self.selectedFont = selectedFont
        self.imageHeight = imageHeight
        self.imageRenderMode = imageRenderMode
        self.spacing = spacing
        self.cornerRadius = cornerRadius
        self.shadow = shadow
        self.separator = separator
        self.axis = axis
    }

    public init(backgroundColor: UIColor,
                textColor: UIColor = .darkGray,
                tintColor: UIColor = .darkGray,
                selectedTextColor: UIColor = .black,
                selectedTintColor: UIColor = .black) {
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.tintColor = tintColor
        self.selectedTintColor = selectedTintColor
        self.selectedTextColor = selectedTextColor
    }

    public init() { }
}
