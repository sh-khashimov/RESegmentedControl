//
//  BasicExampleViewController.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/26/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import UIKit
import RESegmentedControl

class BasicExampleViewController: UIViewController {

    let tintColor = UIColor.init(red: 0, green: 122/255, blue: 1, alpha: 1)

    /// List of items
    let items = ["safari", "chrome", "firefox"]

    @IBOutlet weak var textSegment: RESegmentedControl! {
        didSet {

            var segmentItems: [SegmentModel] {
                return items.map({ SegmentModel(title: $0) })
            }

            let preset = iOS13Preset()
            textSegment.configure(segmentItems: segmentItems, preset: preset)
        }
    }

    @IBOutlet weak var imageSegment: RESegmentedControl! {
        didSet {

            var segmentItems: [SegmentModel] {
                return items.map({ SegmentModel(imageName: $0) })
            }

            let preset = iOS7Preset(tintColor: tintColor)
            imageSegment.configure(segmentItems: segmentItems, preset: preset)
        }
    }

    @IBOutlet weak var verticalTextAndImageSegment: RESegmentedControl! {
        didSet {

            var segmentItems: [SegmentModel] {
                return items.map({ SegmentModel(title: $0, imageName: $0) })
            }

            var preset = MaterialPreset(backgroundColor: .orange, tintColor: .black)

            preset.segmentItemAxis = .vertical
            preset.spaceBetweenImageAndLabel = 0

            verticalTextAndImageSegment.configure(segmentItems: segmentItems, preset: preset)
        }
    }

    @IBOutlet weak var horizontalTextAndImageSegment: RESegmentedControl! {
        didSet {

            var segmentItems: [SegmentModel] {
                return items.map({ SegmentModel(title: $0, imageName: $0) })
            }

            var preset = BootstapPreset(backgroundColor: .white, selectedBackgroundColor: #colorLiteral(red: 0.9843137255, green: 0.7568627451, blue: 0.03529411765, alpha: 1))

            preset.segmentItemBorderWidth = 1
            preset.segmentItemBorderColor = #colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9333333333, alpha: 1)

            preset.textFont = UIFont.systemFont(ofSize: 11, weight: .bold)
            preset.selectedTextFont = UIFont.systemFont(ofSize: 11, weight: .bold)

            preset.segmentItemAxis = .horizontal

            horizontalTextAndImageSegment.configure(segmentItems: segmentItems, preset: preset)
        }
    }

    @IBOutlet weak var imageUrlSegment: RESegmentedControl! {
        didSet {
            let urls: [String?] = ["https://github.com/sh-khashimov/RESegmentedControl/blob/master/Images/browsers/safari.png", "https://github.com/sh-khashimov/RESegmentedControl/blob/master/Images/browsers/chrome.png", "https://github.com/sh-khashimov/RESegmentedControl/blob/master/Images/browsers/firefox.png"]

            let segmentItems: [SegmentModel] = urls.map({ SegmentModel(imageUrl: $0) })

            let preset = iOS7Preset(tintColor: tintColor)
            imageUrlSegment.configure(segmentItems: segmentItems, preset: preset)
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Basic Layout Example"
        // Do any additional setup after loading the view.
    }

}
