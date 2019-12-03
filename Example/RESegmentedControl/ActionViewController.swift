//
//  ViewController.swift
//  podTest
//
//  Created by Sherzod Khashimov on 6/6/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import UIKit
import RESegmentedControl

class ActionViewController: UIViewController {

    let items = ["Item 1", "Item 2"]

    @IBOutlet weak var segment: RESegmentedControl! {
        didSet {
            let segmentItems = items.map({ SegmentModel(title: $0) })

            var preset = BootstapPreset()
            preset.backgroundColor = #colorLiteral(red: 0.9843137255, green: 0.7568627451, blue: 0.03529411765, alpha: 1)
            preset.segmentItemBorderWidth = 1
            preset.segmentItemBorderColor = #colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9333333333, alpha: 1)
            preset.textFont = UIFont.systemFont(ofSize: 11, weight: .bold)

            segment.configure(segmentItems: segmentItems, preset: preset, selectedIndex: 0)
        }
    }

    @IBOutlet weak var selectedIndexLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Actions Example"
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    @IBAction func segmentValueChanged(_ sender: RESegmentedControl) {
        selectedIndexLabel.text = "selected segment index: \(sender.selectedSegmentIndex)"
        print(selectedIndexLabel.text ?? "")
    }

    @IBAction func addItem(_ sender: Any) {
        segment.addItem(SegmentModel(title: "Item \(segment.segmentItemsCount + 1)", imageName: nil))
    }

    @IBAction func removeFirstItem(_ sender: Any) {
        segment.removeItem(atIndex: 0)
    }

    @IBAction func removeItem(_ sender: Any) {
        segment.removeItem()
    }

    @IBAction func selectLastItem(_ sender: Any) {
        segment.selectedSegmentIndex = segment.segmentItemsCount - 1
    }

    @IBAction func deselectItem(_ sender: Any) {
        segment.deselect()
    }

}

