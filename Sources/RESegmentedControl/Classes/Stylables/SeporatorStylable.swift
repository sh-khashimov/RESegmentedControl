//
//  SeporatorStylable.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/25/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import Foundation
import UIKit

/// A seporator style
public protocol SeporatorStylable {

    /// Seporator color
    var color: UIColor { get set }

    /// Seporator width
    var width: CGFloat { get set }

    /// Seporator offset
    var offset: CGFloat { get set }
}
