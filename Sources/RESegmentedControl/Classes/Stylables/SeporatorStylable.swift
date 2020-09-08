//
//  SeparatorStylable.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/25/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import Foundation
import UIKit

/// A separator style
public protocol SeparatorStylable {

    /// Separator color
    var color: UIColor { get set }

    /// Separator width
    var width: CGFloat { get set }

    /// Separator offset
    var offset: CGFloat { get set }
}
