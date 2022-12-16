//
//  iOS13Preset.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/26/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import Foundation
import UIKit

public struct iOS13Preset: SegmentedControlPresettable {

    public var segmentStyle: SegmentStylable
    public var segmentItemStyle: SegmentItemStylable
    public var segmentSelectedItemStyle: SegmentSelectedItemStylable

    struct SegmentStyle: SegmentStylable {
        
        var size: SegmentedControlSize = .fixed(height: 29)

        var clipsToBounds: Bool = true

        var borderWidth: CGFloat = 0

        var borderColor: CGColor? = nil

        var cornerRadius: CGFloat = 6

        var spacing: CGFloat = 0
        
        var contentWidthType: SegmentContentWidthType = .dynamic

        init() { }
    }

    struct SegmentItemStyle: SegmentItemStylable {
        
        var textColor: UIColor = .black

        var tintColor: UIColor = .black

        var selectedTextColor: UIColor = .black

        var selectedTintColor: UIColor = .black

        var backgroundColor: UIColor = #colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9411764706, alpha: 1)
        
        var gradientColor: SegmentGradientColor? = nil

        var borderWidth: CGFloat = 0

        var borderColor: CGColor?

        var font: UIFont = .systemFont(ofSize: 13)

        var selectedFont: UIFont? = .systemFont(ofSize: 13, weight: .semibold)
        
        var textAlignment: NSTextAlignment? = .center
        
        var selectedTextAlignment: NSTextAlignment? = .center

        var imageHeight: CGFloat = 15

        var imageRenderMode: UIImage.RenderingMode = .alwaysTemplate

        var spacing: CGFloat = 5

        var cornerRadius: CGFloat = 0

        var shadow: ShadowStylable? = nil

        var separator: SeparatorStylable? = SeparatorStyle()

        var axis: NSLayoutConstraint.Axis = .horizontal

        struct SeparatorStyle: SeparatorStylable {
            var color: UIColor = #colorLiteral(red: 0.8745098039, green: 0.8745098039, blue: 0.8784313725, alpha: 1)

            var width: CGFloat = 1

            var offset: CGFloat = 5
        }

        init() { }
    }

    struct SegmentSelectedItemStyle: SegmentSelectedItemStylable {

        var backgroundColor: UIColor = .white
        
        var gradientColor: SegmentGradientColor? = nil

        var cornerRadius: CGFloat = 6

        var borderWidth: CGFloat = 0

        var borderColor: CGColor?

        var size: SelectedSegmentSize = .max

        var offset: CGFloat = 2

        var shadow: ShadowStylable? = SegmentItemShadowStyle()

        init() { }

        struct SegmentItemShadowStyle: ShadowStylable {
            var color: CGColor? = UIColor.black.cgColor

            var opacity: Float = 0.2

            var offset: CGSize = .zero

            var radius: CGFloat = 5

            var path: CGPath? = nil
        }

    }

    public init() {
        self.segmentStyle = SegmentStyle()
        self.segmentItemStyle = SegmentItemStyle()
        self.segmentSelectedItemStyle = SegmentSelectedItemStyle()
    }

}
