//
//  SegmentItemStylable.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/21/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import Foundation
import UIKit

/// A segment item avaulable styles
public protocol SegmentItemStylable {

    /// A segment item text color
    var textColor: UIColor { get set }

    /// A segment item tint color (applied to the image)
    var tintColor: UIColor { get set }

    /// A segment item selected text color
    var selectedTextColor: UIColor { get set }

    /// A segment item selected tint color
    var selectedTintColor: UIColor { get set }

    /// A segment item background color
    var backgroundColor: UIColor { get set }

    /// A segment item boroder width
    var borderWidth: CGFloat { get set }

    /// A segment item border color
    var borderColor: CGColor? { get set }

    /// A segment item font
    var font: UIFont { get set }

    /// A segment item selected font (Optional)
    var selectedFont: UIFont? { get set }

    /// A segment item image height
    var imageHeight: CGFloat { get set }

    /// A segment item image render mode
    var imageRenderMode: UIImage.RenderingMode { get set }

    /// The space between text and image
    var spacing: CGFloat { get set }

    /// A segment item corner radius
    var cornerRadius: CGFloat { get set }

    /// A segment item shadow style
    var shadow: ShadowStylable? { get set }

    /// A segment item seporator style
    var seporator: SeporatorStylable? { get set }

    /// The axis between text and image
    var axis: NSLayoutConstraint.Axis { get set }
}
