//
//  iOS7Preset.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/26/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import Foundation
import UIKit

public struct iOS7Preset: SegmentedControlPresettable {

    public var segmentStyle: SegmentStylable
    public var segmentItemStyle: SegmentItemStylable
    public var segmentSelectedItemStyle: SegmentSelectedItemStylable

    struct SegmentStyle: SegmentStylable {
        var size: SegmentedControlSize = .fixed(height: 29)

        var clipsToBounds: Bool = true

        var borderWidth: CGFloat = 1

        var borderColor: CGColor?

        var cornerRadius: CGFloat = 5

        var spacing: CGFloat = 0

        init(tintColor: UIColor) {
            self.borderColor = tintColor.cgColor
        }
    }

    struct SegmentItemStyle: SegmentItemStylable {
        var textColor: UIColor = .blue

        var tintColor: UIColor = .blue

        var selectedTextColor: UIColor = .white

        var selectedTintColor: UIColor = .white

        var backgroundColor: UIColor = .white

        var borderWidth: CGFloat = 0

        var borderColor: CGColor?

        var font: UIFont = .systemFont(ofSize: 13)

        var selectedFont: UIFont?

        var imageHeight: CGFloat = 15

        var imageRenderMode: UIImage.RenderingMode = .alwaysTemplate

        var spacing: CGFloat = 5

        var cornerRadius: CGFloat = 0

        var shadow: ShadowStylable? = nil

        var seporator: SeporatorStylable? = nil

        var axis: NSLayoutConstraint.Axis = .horizontal

        struct SeporatorStyle: SeporatorStylable {
            var color: UIColor = .blue

            var width: CGFloat = 1

            var offset: CGFloat = 0

            init(tintColor: UIColor) {
                self.color = tintColor
            }
        }

        init(tintColor: UIColor) {
            self.tintColor = tintColor
            self.textColor = tintColor
            self.seporator = SeporatorStyle(tintColor: tintColor)
        }
    }

    struct SegmentSelectedItemStyle: SegmentSelectedItemStylable {
        var backgoundColor: UIColor = .blue

        var cornerRadius: CGFloat = 0

        var borderWidth: CGFloat = 0

        var borderColor: CGColor?

        var size: SelectedSegmentSize = .max

        var offset: CGFloat = 0

        var shadow: ShadowStylable? = nil

        init(tintColor: UIColor) {
            self.backgoundColor = tintColor
        }

    }

    public init(tintColor: UIColor) {
        self.segmentStyle = SegmentStyle(tintColor: tintColor)
        self.segmentItemStyle = SegmentItemStyle(tintColor: tintColor)
        self.segmentSelectedItemStyle = SegmentSelectedItemStyle(tintColor: tintColor)
    }

}
