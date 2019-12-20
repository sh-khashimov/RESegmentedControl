//
//  PresetsViewController.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/26/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import UIKit
import RESegmentedControl

class PresetsViewController: UIViewController {

    let items = ["Movie", "TV Show", "Cartoons"]

    var segmentItems: [SegmentModel] {
        return items.map({ SegmentModel(title: $0) })
    }

    @IBOutlet weak var ios7SegmentedControl: RESegmentedControl! {
        didSet {
            let tintColor = UIColor.init(red: 0, green: 122/255, blue: 1, alpha: 1)
            let preset = iOS7Preset(tintColor: tintColor)
            ios7SegmentedControl.configure(segmentItems: segmentItems, preset: preset)
        }
    }

    @IBOutlet weak var ios13SegmentedControl: RESegmentedControl! {
        didSet {
            let preset = iOS13Preset()
            ios13SegmentedControl.configure(segmentItems: segmentItems, preset: preset)
        }
    }

    @IBOutlet weak var materialSegmentedControl: RESegmentedControl! {
        didSet {
            let preset = MaterialPreset(backgroundColor: .orange, tintColor: .black)
            materialSegmentedControl.configure(segmentItems: items.map({ SegmentModel(title: $0.uppercased()) }), preset: preset)
        }
    }

    @IBOutlet weak var customSimple1SegmentedControl: RESegmentedControl! {
        didSet {
            var backgroundColor: UIColor = .black

            if #available(iOS 11.0, *) {
                backgroundColor = UIColor(named: "darkBlack") ?? .black
            }

            var preset = BootstapPreset(backgroundColor: backgroundColor, selectedBackgroundColor: .darkGray, textColor: .lightGray, selectedTextColor: .white)

            preset.textFont = UIFont.systemFont(ofSize: 11, weight: .bold)
            preset.selectedTextFont = UIFont.systemFont(ofSize: 11, weight: .bold)

            preset.selectedSegmentItemOffset = 2

            customSimple1SegmentedControl.configure(segmentItems: items.map({ SegmentModel(title: $0.uppercased()) }), preset: preset)
        }
    }

    @IBOutlet weak var customSimple2SegmentedControl: RESegmentedControl! {
        didSet {
            var preset = BootstapPreset(backgroundColor: .white, selectedBackgroundColor: #colorLiteral(red: 0.9843137255, green: 0.7568627451, blue: 0.03529411765, alpha: 1))

            preset.segmentItemBorderWidth = 1
            preset.segmentItemBorderColor = #colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9333333333, alpha: 1)

            preset.textFont = UIFont.systemFont(ofSize: 11, weight: .bold)
            preset.selectedTextFont = UIFont.systemFont(ofSize: 11, weight: .bold)

            customSimple2SegmentedControl.configure(segmentItems: items.map({ SegmentModel(title: $0.uppercased()) }), preset: preset)
        }
    }


    lazy var customSimple3preset: SegmentedControlPresettable = {

        var selectedBackgroundColor: UIColor = .black

        if #available(iOS 11.0, *) {
            selectedBackgroundColor = UIColor(named: "darkBlack") ?? .black
        }

        var preset = BootstapPreset(backgroundColor: .clear, selectedBackgroundColor: selectedBackgroundColor, textColor: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), selectedTextColor: .white)

        preset.segmentBorderWidth = 2
        preset.segmentBorderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)

        preset.textFont = UIFont.systemFont(ofSize: 11, weight: .bold)
        preset.selectedTextFont = UIFont.systemFont(ofSize: 11, weight: .bold)
        return preset
    }()

    @IBOutlet weak var customSimple3SegmentedControl: RESegmentedControl! {
        didSet {

            customSimple3SegmentedControl.configure(segmentItems: items.map({ SegmentModel(title: $0.uppercased()) }), preset: customSimple3preset)
        }
    }


    @IBOutlet weak var customSimple4SegmentedControl: RESegmentedControl! {
        didSet {

            var textColor: UIColor = .black

            if #available(iOS 13.0, *) {
                textColor = .label
            }

            var preset = BootstapPreset(backgroundColor: .clear, selectedBackgroundColor: #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1), textColor: textColor, selectedTextColor: .white)

            preset.segmentSpacing = 15

            preset.selectedSegmentItemCornerRadius = 10
            preset.selectedSegmentItemShadow = SegmentItemShadowStyle(color: UIColor.black.cgColor, opacity: 0.3, offset: .zero, radius: 10, path: nil)

            preset.textFont = UIFont.systemFont(ofSize: 11, weight: .bold)
            preset.selectedTextFont = UIFont.systemFont(ofSize: 11, weight: .bold)

            customSimple4SegmentedControl.configure(segmentItems: items.map({ SegmentModel(title: $0.uppercased()) }), preset: preset)
        }
    }


    @IBOutlet weak var customSimple5SegmentedControl: RESegmentedControl! {
        didSet {
            var preset = BootstapPreset(backgroundColor: .white, selectedBackgroundColor: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), selectedTextColor: .white)

            preset.segmentSpacing = 15
            preset.segmentItemCornerRadius = 10
            preset.selectedSegmentItemCornerRadius = 10
            preset.segmentItemShadow = SegmentItemShadowStyle(color: UIColor.black.cgColor, opacity: 0.2, offset: .zero, radius: 5, path: nil)

            preset.textFont = UIFont.systemFont(ofSize: 11, weight: .bold)
            preset.selectedTextFont = UIFont.systemFont(ofSize: 11, weight: .bold)

            customSimple5SegmentedControl.configure(segmentItems: items.map({ SegmentModel(title: $0.uppercased()) }), preset: preset)
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Style Presets Example"
        // Do any additional setup after loading the view.
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        customSimple3preset.selectedSegmentItemCornerRadius = customSimple3SegmentedControl.bounds.size.height / 2
        customSimple3preset.segmentCornerRadius = customSimple3SegmentedControl.bounds.size.height / 2

        customSimple3SegmentedControl.preset = customSimple3preset
    }

}
