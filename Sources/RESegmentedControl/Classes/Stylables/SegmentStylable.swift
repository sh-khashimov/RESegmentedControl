//
//  SegmentStylable.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/21/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import Foundation
import UIKit

/// Segmented control
public protocol SegmentStylable {

    /// Segmented control size type
    var size: SegmentedControlSize { get set }

    /// A space between segments
    var spacing: CGFloat { get set }

    /// Whether or not should `clipsToBounds` the segmented control
    var clipsToBounds: Bool { get set }

    /// Segmented control boder width
    var borderWidth: CGFloat { get set }

    /// Segmented control border color
    var borderColor: CGColor? { get set }

    /// Segmetned control corner radius
    var cornerRadius: CGFloat { get set }
    
    /// Segment content width type, default is dynamic
    /// Use full, if you need to stretch the text width
    /// Dynamic will be change the content width dynamically
    var contentWidthType: SegmentContentWidthType { get set }
}
