//
//  SegmentSelectedItemStylable.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/21/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import Foundation
import UIKit

/// The selected segment item style
public protocol SegmentSelectedItemStylable {

    /// Selected segment item background color
    var backgroundColor: UIColor { get set }
    
    /// Selected segment gradient color
    var gradientColor: SegmentGradientColor? { get set }

    /// Selected segment item corner radius
    var cornerRadius: CGFloat { get set }

    /// Selected segment item border width
    var borderWidth: CGFloat { get set }

    /// Selected segment item border color
    var borderColor: CGColor? { get set }

    /// Selected segment item shadow style
    var shadow: ShadowStylable? { get set }

    /// Selected segment item size type
    var size: SelectedSegmentSize { get set }

    /// Selected segment item offset
    var offset: CGFloat { get set }
}
