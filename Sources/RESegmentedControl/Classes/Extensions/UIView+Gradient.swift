//
//  UIView+Gradient.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 15/12/22.
//

import Foundation
import UIKit

extension UIView {
    func addGradient(with segmentGradientColor: SegmentGradientColor) -> CAGradientLayer {
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = segmentGradientColor.colors.map({ $0.cgColor })
        gradient.type = segmentGradientColor.type
        gradient.locations = segmentGradientColor.locations
        gradient.startPoint = segmentGradientColor.startPoint
        gradient.endPoint = segmentGradientColor.endPoint

        self.layer.insertSublayer(gradient, at: 0)
        
        return gradient
    }
}
