//
//  SegmentGradientColor.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 15/12/22.
//

import Foundation
import UIKit

/// Gradient color model that used to set gradient
public struct SegmentGradientColor {
    /// Colors for gradient
    var colors: [UIColor]
    
    /// gradient colors locations
    var locations: [NSNumber]? = nil
    
    /// gradient start point
    var startPoint: CGPoint
    
    /// gradient end point
    var endPoint: CGPoint
    
    /// gradient type
    var type: CAGradientLayerType
    
    public init(colors: [UIColor], startPoint: CGPoint = CGPoint(x: 0.5, y: 0.0), endPoint: CGPoint = CGPoint(x: 0.5, y: 1.0), type: CAGradientLayerType = .axial, locations: [NSNumber]? = nil) {
        self.colors = colors
        self.locations = locations
        self.startPoint = startPoint
        self.endPoint = endPoint
        self.type = type
    }
}
