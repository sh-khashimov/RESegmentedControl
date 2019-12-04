//
//  URL+Filename.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/27/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import Foundation

extension URL {

    /// Hashed filename from remote url path
    var filename: String? {
        guard let urlStringData = self.absoluteString.data(using: .utf8) else { return nil }
        let filename = urlStringData.hexEncodedString()
        return filename
    }
}
