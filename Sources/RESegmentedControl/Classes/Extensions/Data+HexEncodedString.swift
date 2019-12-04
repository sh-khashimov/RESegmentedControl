//
//  Data+HexEncodedString.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/27/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import Foundation
// https://stackoverflow.com/a/40089462

extension Data {
    func hexEncodedString() -> String {
        return map { String(format: "%02hhx", $0) }.joined()
    }
}
