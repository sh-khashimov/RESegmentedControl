//
//  ImageDownloader.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/27/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import Foundation
import UIKit

/// Image downloader used to get image from remote server and caches image to local cache directory
class ImageDownloader {

    enum ImageError: Error {
        case downloadFailed
    }

    private var task: URLSessionDataTask?

    /// Starts download image
    /// - Parameters:
    ///   - url: Image remote location
    ///   - completion: completion handler
    func downloadImage(url: URL, completion: ((_ image: UIImage?, _ url: URL, _ error: Error?) -> Void)?) {

        if let cachedImage = imageData(from: url) {
            DispatchQueue.main.async {
                completion?(cachedImage, url, nil)
            }
        } else {
            DispatchQueue.global(qos: .background).async {
                let configuration = URLSessionConfiguration.default
                let session = URLSession(configuration: configuration)
                self.task = session.dataTask(with: url, completionHandler: { (data, response, error) in
                    guard error == nil else {
                        DispatchQueue.main.async {
                            completion?(nil, url, error)
                        }
                        return
                    }
                    guard let _data = data,
                        let image = UIImage(data: _data) else {
                        DispatchQueue.main.async {
                            completion?(nil, url, ImageError.downloadFailed)
                        }
                        return
                    }
                    _ = self.save(_data, fromUrl: url)
                    DispatchQueue.main.async {
                        completion?(image, url, nil)
                    }
                })
                self.task?.resume()
            }
        }
    }

    /// Cancel started download task
    func cancel() {
        task?.cancel()
    }

    /// Saves image to local storage
    /// - Parameters:
    ///   - data: Data that represent image
    ///   - remoteUrl: Image remote location, used to get filename
    private func save(_ data: Data, fromUrl remoteUrl: URL) -> URL? {
        guard let filename = remoteUrl.filename else { return nil }
        let fileManager = FileManager()
        let fileLocation = fileManager.saveImage(data, filename: filename)
        return fileLocation
    }

    /// Retrives image from local storage
    /// - Parameter remoteUrl: Image remote location, used to get filename
    private func imageData(from remoteUrl: URL) -> UIImage? {
        guard let filename = remoteUrl.filename else { return nil }
        let fileManager = FileManager()
        guard let data = fileManager.imageData(filename: filename) else { return nil }
        return UIImage(data: data)
    }
}
