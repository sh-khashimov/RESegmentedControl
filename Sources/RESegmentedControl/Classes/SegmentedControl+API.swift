//
//  RESegmentedControl+API.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/28/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import Foundation

extension RESegmentedControl {

    /// Segment items count
    public var segmentItemsCount: Int {
        return segmentItems.count
    }

    /// Adds new segment item with the specified model
    /// - Parameters:
    ///   - item: Segment item model
    ///   - index: Index where should be added (optional)
    public func addItem(_ item: SegmentModel, atIndex index: Int? = nil) {

        if let index = index, index < segmentItems.count {
            self.segmentItems.insert(item, at: index)
        } else {
            self.segmentItems.append(item)
        }

        updateLayouts()
    }

    /// Removes segment item
    /// - Parameter index: Index where should be removed (optional)
    public func removeItem(atIndex index: Int? = nil) {

        guard self.segmentItems.count > 0 else { return }
        if let index = index, index < segmentItems.count {
            self.segmentItems.remove(at: index)
        } else {
            self.segmentItems.removeLast()
        }

        if selectedSegmentIndex >= self.segmentItems.count {
            selectedSegmentIndex = self.segmentItems.count - 1
        }

        updateLayouts()

    }

    /// Replace the segment item with the specified model
    /// - Parameters:
    ///   - item: Segment item model
    ///   - index: Index where should be replaced
    public func replaceItem(_ item: SegmentModel, atIndex index: Int) {
        
        guard self.segmentItems.count > 0 else { return }
        guard index < segmentItems.count else { return }

        self.segmentItems[index] = item

        reloadItems = [IndexPath(item: index, section: 0)]
        updateLayouts()
        reloadItems = nil
    }

    /// Clears images cache, that was downloaded from a remote server
    public static func clearCache() {
        let fileManager = FileManager()
        fileManager.removeImagesDirectory()
    }

    /// Deselect selected segment item
    public func deselect() {
        self.selectedSegmentIndex = -1
    }
}
