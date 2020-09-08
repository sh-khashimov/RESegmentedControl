//
//  SeparatorStyle.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/28/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import Foundation
import UIKit

public struct SeparatorStyle: SeparatorStylable {
    
    public var color: UIColor = .gray

    public var width: CGFloat = 1

    public var offset: CGFloat = 0

    public init(color: UIColor, width: CGFloat, offset: CGFloat) {
        self.color = color
        self.width = width
        self.offset = offset
    }

    public init() { }
}
