//
//  FileManager+Save.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/27/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import Foundation

extension FileManager {

    /// Bundle identifier used to find bundle folder in the cache directory
    private var bundleIdentifier: String? {
        let bundle = Bundle(for: RESegmentedControl.self)
        return bundle.bundleIdentifier
    }

    /// Bundle directory in cache directory
    private var directory: URL? {
        guard let cacheDirectory = self.urls(for: .cachesDirectory, in: .userDomainMask).first, let bundleIdentifier = bundleIdentifier else { return nil }
        let directory = cacheDirectory.appendingPathComponent(bundleIdentifier, isDirectory: true)
        try? self.createDirectory(atPath: directory.path, withIntermediateDirectories: true, attributes: nil)
        return directory
    }

    /// Images directory in cache directory
    private var imagesDirectory: URL? {
        guard let directory = directory else { return nil }
        let imagesDirectory = directory.appendingPathComponent("images", isDirectory: true)
        try? self.createDirectory(atPath: imagesDirectory.path, withIntermediateDirectories: true, attributes: nil)
        return imagesDirectory
    }

    /// Saves image to images directory
    /// - Parameters:
    ///   - data: Data that will be saved
    ///   - filename: Filename
    func saveImage(_ data: Data, filename: String) -> URL? {
        guard let directory = imagesDirectory else { return nil }
        return save(data, filename: filename, toDirectory: directory)
    }

    /// Data that represent image
    /// - Parameter filename: Filename
    func imageData(filename: String) -> Data? {
        guard let directory = imagesDirectory else { return nil }
        return data(fromDirectory: directory, filename: filename)
    }

    /// Saves data
    /// - Parameters:
    ///   - data: Data object
    ///   - filename: Filename
    ///   - directory: Directory where data will be saved
    func save(_ data: Data, filename: String, toDirectory directory: URL) -> URL? {
        let fileLocation = directory.appendingPathComponent(filename)
        try? data.write(to: fileLocation)
        return fileLocation
    }

    /// Retrieves data
    /// - Parameters:
    ///   - directory: Directory where located a data
    ///   - filename: Filename
    func data(fromDirectory directory: URL, filename: String) -> Data? {
        let fileLocation = directory.appendingPathComponent(filename)

        guard let data = try? Data(contentsOf: fileLocation) else { return nil }
        return data
    }

    /// Removes images directory
    func removeImagesDirectory() {
        guard let imagesDirectory = imagesDirectory else { return }
        try? self.removeItem(at: imagesDirectory)
    }
}
