//
//  File.swift
//  
//
//  Created by Sherzod Khashimov on 15/12/20.
//

import Foundation

extension Bundle {
    static func bundle(forResource: String?, ofType: String?) -> Bundle {
        
        let resolvedBundle: Bundle
        
        if Bundle.main.path(forResource: forResource, ofType: ofType) != nil {
            resolvedBundle = Bundle.main
        } else if let moduleBundle = Bundle(identifier: "org.cocoapods.RESegmentedControl") {
            resolvedBundle = moduleBundle
        } else {
            resolvedBundle = Bundle.module
        }
        
        return resolvedBundle
    }
}
