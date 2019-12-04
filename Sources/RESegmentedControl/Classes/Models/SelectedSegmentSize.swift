//
//  SelectedSegmentSize.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/21/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import Foundation

/// Selected segment item size type
public enum SelectedSegmentSize {
    case max
    case height(_ height: Double, position: Position)

    /// Selected segment item position
    public enum Position {
        case bottom
        case top
    }
}
