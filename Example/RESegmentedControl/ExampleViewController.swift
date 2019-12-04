//
//  ExampleViewController.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/22/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import UIKit

class ExampleViewController: UIViewController {

    let examples = ["Basic Layout Example", "Selecting, Adding, Removing", "Presets Example"]

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
            tableView.delegate = self
            tableView.tableFooterView = UIView()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Segmented Control"
    }

    fileprivate func showExample(for row: Int) {

        var viewName: String? = nil
        switch row {
        case 0:
            viewName = "\(BasicExampleViewController.self)"
        case 1:
            viewName = "\(ActionViewController.self)"
        case 2:
            viewName = "\(PresetsViewController.self)"
        default:
            break
        }
        guard let _viewName = viewName else { return }

        self.performSegue(withIdentifier: "show\(_viewName)", sender: nil)
    }

}

extension ExampleViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return examples.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = examples[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        showExample(for: indexPath.row)

        tableView.deselectRow(at: indexPath, animated: true)
    }

}
