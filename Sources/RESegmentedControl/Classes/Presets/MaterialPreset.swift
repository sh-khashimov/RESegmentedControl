//
//  MaterialPreset.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/26/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import Foundation
import UIKit

public struct MaterialPreset: SegmentedControlPresettable {

    public var segmentStyle: SegmentStylable
    public var segmentItemStyle: SegmentItemStylable
    public var segmentSelectedItemStyle: SegmentSelectedItemStylable

    struct SegmentStyle: SegmentStylable {
        var size: SegmentedControlSize = .maxHeight

        var clipsToBounds: Bool = true

        var borderWidth: CGFloat = 0

        var borderColor: CGColor? = nil

        var cornerRadius: CGFloat = 0

        var spacing: CGFloat = 0

        init() { }
    }

    struct SegmentItemStyle: SegmentItemStylable {
        var textColor: UIColor = .white

        var tintColor: UIColor = .white

        var selectedTextColor: UIColor = .black

        var selectedTintColor: UIColor = .black

        var backgroundColor: UIColor = .white

        var borderWidth: CGFloat = 0

        var borderColor: CGColor?

        var font: UIFont = .systemFont(ofSize: 13, weight: .semibold)

        var selectedFont: UIFont?

        var imageHeight: CGFloat = 15

        var imageRenderMode: UIImage.RenderingMode = .alwaysTemplate

        var spacing: CGFloat = 5

        var cornerRadius: CGFloat = 0

        var shadow: ShadowStylable? = nil

        var seporator: SeporatorStylable? = nil

        var axis: NSLayoutConstraint.Axis = .horizontal

        init(backgroundColor: UIColor, tintColor: UIColor) {
            self.backgroundColor = backgroundColor
            self.selectedTextColor = tintColor
            self.selectedTintColor = tintColor
        }
    }

    struct SegmentSelectedItemStyle: SegmentSelectedItemStylable {

        var backgoundColor: UIColor = .white

        var cornerRadius: CGFloat = 0

        var borderWidth: CGFloat = 0

        var borderColor: CGColor?

        var size: SelectedSegmentSize = .height(5, position: .bottom)

        var offset: CGFloat = 0

        var shadow: ShadowStylable? = nil

        init(tintColor: UIColor) {
            self.backgoundColor = tintColor
        }

    }

    public init(backgroundColor: UIColor, tintColor: UIColor) {
        self.segmentStyle = SegmentStyle()
        self.segmentItemStyle = SegmentItemStyle(backgroundColor: backgroundColor, tintColor: tintColor)
        self.segmentSelectedItemStyle = SegmentSelectedItemStyle(tintColor: tintColor)
    }

}
