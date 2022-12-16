//
//  SegmentedControlPresettable.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/22/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import Foundation
import UIKit

/// Segmented control preset
public protocol SegmentedControlPresettable {

    /// Segmented control style
    var segmentStyle: SegmentStylable { get set }

    /// Segment item style
    var segmentItemStyle: SegmentItemStylable { get set }

    /// Selected segment item style
    var segmentSelectedItemStyle: SegmentSelectedItemStylable { get set }
}

// -MARK: SegmentStylable
public extension SegmentedControlPresettable {

    /// A space between segments
    var segmentSpacing: CGFloat {
        get {
            return segmentStyle.spacing
        }
        set {
            segmentStyle.spacing = newValue
        }
    }

    /// Segmented control size type
    var segmentSize: SegmentedControlSize {
        get {
            return segmentStyle.size
        }
        set {
            segmentStyle.size = newValue
        }
    }

    /// Whether or not should `clipsToBounds` the segmented control
    var segmentClipsToBounds: Bool {
        get {
            return segmentStyle.clipsToBounds
        }
        set {
            segmentStyle.clipsToBounds = newValue
        }
    }

    /// Segmented control boder width
    var segmentBorderWidth: CGFloat {
        get {
            return segmentStyle.borderWidth
        }
        set {
            segmentStyle.borderWidth = newValue
        }
    }

    /// Segmented control border color
    var segmentBorderColor: CGColor? {
        get {
            return segmentStyle.borderColor
        }
        set {
            segmentStyle.borderColor = newValue
        }
    }

    /// Segmetned control corner radius
    var segmentCornerRadius: CGFloat {
        get {
            return segmentStyle.cornerRadius
        }
        set {
            segmentStyle.cornerRadius = newValue
        }
    }
}

// -MARK: SegmentItemStylable
public extension SegmentedControlPresettable {

    /// A segment item background color
    var backgroundColor: UIColor {
        get {
            return segmentSelectedItemStyle.backgroundColor
        }
        set {
            segmentSelectedItemStyle.backgroundColor = newValue
        }
    }
    
    /// A segment item gradient background color
    var gradientColor: SegmentGradientColor? {
        get {
            return segmentItemStyle.gradientColor
        }
        set {
            segmentItemStyle.gradientColor = newValue
        }
    }

    /// A segment item font
    var textFont: UIFont {
        get {
            return segmentItemStyle.font
        }
        set {
            segmentItemStyle.font = newValue
        }
    }

    /// A segment item selected font (Optional)
    var selectedTextFont: UIFont? {
        get {
            return segmentItemStyle.selectedFont
        }
        set {
            segmentItemStyle.selectedFont = newValue
        }
    }

    /// A segment item text color
    var textColor: UIColor {
        get {
            return segmentItemStyle.textColor
        }
        set {
            segmentItemStyle.textColor = newValue
        }
    }

    /// A segment item tint color (applied to the image)
    var tintColor: UIColor {
        get {
            return segmentItemStyle.tintColor
        }
        set {
            segmentItemStyle.tintColor = newValue
        }
    }

    /// A segment item selected text color
    var selectedTextColor: UIColor {
        get {
            return segmentItemStyle.selectedTextColor
        }
        set {
            segmentItemStyle.selectedTextColor = newValue
        }
    }

    /// A segment item selected tint color
    var selectedTintColor: UIColor {
        get {
            return segmentItemStyle.selectedTintColor
        }
        set {
            segmentItemStyle.selectedTintColor = newValue
        }
    }

    /// A segment item border color
    var segmentItemBorderColor: CGColor? {
        get {
            return segmentItemStyle.borderColor
        }
        set {
            segmentItemStyle.borderColor = newValue
        }
    }

    /// A segment item boroder width
    var segmentItemBorderWidth: CGFloat {
        get {
            return segmentItemStyle.borderWidth
        }
        set {
            segmentItemStyle.borderWidth = newValue
        }
    }

    /// A segment item image height
    var imageHeight: CGFloat {
        get {
            return segmentItemStyle.imageHeight
        }
        set {
            segmentItemStyle.imageHeight = newValue
        }
    }


    /// A segment item image render mode
    var imageRenderMode: UIImage.RenderingMode {
        get {
            return segmentItemStyle.imageRenderMode
        }
        set {
            segmentItemStyle.imageRenderMode = newValue
        }
    }


    /// The space between text and image
    var spaceBetweenImageAndLabel: CGFloat {
        get {
            return segmentItemStyle.spacing
        }
        set {
            segmentItemStyle.spacing = newValue
        }
    }

    /// A segment item corner radius
    var segmentItemCornerRadius: CGFloat {
        get {
            return segmentItemStyle.cornerRadius
        }
        set {
            segmentItemStyle.cornerRadius = newValue
        }
    }

    /// A segment item shadow style
    var segmentItemShadow: ShadowStylable? {
        get {
            return segmentItemStyle.shadow
        }
        set {
            segmentItemStyle.shadow = newValue
        }
    }

    /// The axis between text and image
    var segmentItemAxis: NSLayoutConstraint.Axis {
        get {
            return segmentItemStyle.axis
        }
        set {
            segmentItemStyle.axis = newValue
        }
    }

    /// A segment item separator style
    var segmentItemSeparator: SeparatorStylable? {
        get {
            return segmentItemStyle.separator
        }
        set {
            segmentItemStyle.separator = newValue
        }
    }
}

// -MARK: SegmentSelectedItemStylable
public extension SegmentedControlPresettable {

    /// Selected segment item background color
    var selectedSegmentItemColor: UIColor {
        get {
            return segmentSelectedItemStyle.backgroundColor
        }
        set {
            segmentSelectedItemStyle.backgroundColor = newValue
        }
    }
    
    /// Selected segment item gradient background color
    var selectedSegmentItemGradientColor: SegmentGradientColor? {
        get {
            return segmentSelectedItemStyle.gradientColor
        }
        set {
            segmentSelectedItemStyle.gradientColor = newValue
        }
    }

    /// Selected segment item border color
    var selectedSegmentItemBoderColor: CGColor? {
        get {
            return segmentSelectedItemStyle.borderColor
        }
        set {
            segmentSelectedItemStyle.borderColor = newValue
        }
    }

    /// Selected segment item border width
    var selectedSegmentItemBorderWidth: CGFloat {
        get {
            return segmentSelectedItemStyle.borderWidth
        }
        set {
            segmentSelectedItemStyle.borderWidth = newValue
        }
    }

    /// Selected segment item corner radius
    var selectedSegmentItemCornerRadius: CGFloat {
        get {
            return segmentSelectedItemStyle.cornerRadius
        }
        set {
            segmentSelectedItemStyle.cornerRadius = newValue
        }
    }

    /// Selected segment item size type
    var selectedSegmentItemSizeType: SelectedSegmentSize {
        get {
            return segmentSelectedItemStyle.size
        }
        set {
            segmentSelectedItemStyle.size = newValue
        }
    }

    /// Selected segment item shadow style
    var selectedSegmentItemShadow: ShadowStylable? {
        get {
            return segmentSelectedItemStyle.shadow
        }
        set {
            segmentSelectedItemStyle.shadow = newValue
        }
    }

    /// Selected segment item offset
    var selectedSegmentItemOffset: CGFloat {
        get {
            return segmentSelectedItemStyle.offset
        }
        set {
            segmentSelectedItemStyle.offset = newValue
        }
    }
}
