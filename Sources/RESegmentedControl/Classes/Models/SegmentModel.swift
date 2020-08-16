//
//  SegmentModel.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 7/10/18.
//  Copyright © 2018 Sherzod Khashimov. All rights reserved.
//

import Foundation

/// Segment item model
public struct SegmentModel {

    /// Segmente item title
    var title: String?

    /// Image name located in asset catalog
    var imageName: String?

    /// Bundle that will be used to get image by name
    var bundle: Bundle?

    /// Image remote location
    var imageUrl: URL?

    /// Initializes with title only
    /// - Parameter title: Segment item title
    public init(title: String?) {
        self.title = title
    }

    /// Initializes with title and image
    /// - Parameters:
    ///   - title: Segment item title
    ///   - imageName: Image name located in asset catalog
    ///   - bundle: Bundle that will be used to get image by name
    public init(title: String? = nil, imageName: String?, bundle: Bundle? = nil) {
        self.title = title
        self.imageName = imageName
        self.bundle = bundle
    }

    /// Initializes with title and image
    /// - Parameters:
    ///   - title: Segment item title
    ///   - imageUrl: Image remote location
    public init(title: String? = nil, imageUrl: String?) {
        self.title = title
        if let imageUrlString = imageUrl {
            self.imageUrl = URL(string: imageUrlString)
        }
    }

    /// Whether or not image is set
    public var isImageAvailable: Bool {

        if imageUrl != nil {
            return true
        }

        if imageName != nil && imageName != "" {
            return true
        }

        return false
    }
}
