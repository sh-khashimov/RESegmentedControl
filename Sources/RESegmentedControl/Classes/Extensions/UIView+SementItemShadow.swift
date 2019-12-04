//
//  UIView+SementItemShadow.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/21/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import Foundation
import UIKit

extension UIView {

    /// Applies shadow to view with specified shadow style
    /// - Parameter segmentItemShadow: Shadow style
    func applyShadow(with segmentItemShadow: ShadowStylable?) {
        guard let segmentItemShadow = segmentItemShadow else { return }
        self.layer.shadowColor = segmentItemShadow.color
        self.layer.shadowOpacity = segmentItemShadow.opacity
        self.layer.shadowOffset = segmentItemShadow.offset
        self.layer.shadowRadius = segmentItemShadow.radius
        self.layer.shadowPath = segmentItemShadow.path
    }
}
