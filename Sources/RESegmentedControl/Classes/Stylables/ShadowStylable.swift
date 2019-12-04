//
//  ShadowStylable.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/21/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import Foundation
import UIKit

/// Shadow style
public protocol ShadowStylable {

    /// Shadow color
    var color: CGColor? { get set }

    /// Shadow opacity
    var opacity: Float { get set }

    /// Shadow offset
    var offset: CGSize { get set }

    /// Shadow radius
    var radius: CGFloat { get set }

    /// Shadow path
    var path: CGPath? { get set }
}
