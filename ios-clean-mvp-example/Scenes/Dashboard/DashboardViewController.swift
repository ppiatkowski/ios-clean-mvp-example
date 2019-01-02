//
//  DashboardViewController.swift
//  ios-clean-mvp-example
//
//  Created by Paweł Piątkowski on 28/11/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import UIKit

/**
 * ViewController is View. It should not contain any logic.
 *  All UI events should be passed to Presenter.
 */
class DashboardViewController: UIViewController {
    var presenter: DashboardPresenterProtocol?

    @IBOutlet weak var customerNameLabel: UILabel!
    @IBOutlet weak var customerStatusLabel: UILabel!

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var refreshButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presenter?.start()
    }

    @IBAction func refreshButtonTouchUpInside(_ sender: Any) {
        presenter?.refreshButtonTapped()
    }
    @IBAction func billButtonTouchUpInside(_ sender: Any) {
        presenter?.billButtonTapped()
    }
}

extension DashboardViewController: DashboardViewProtocol {
    func updateCustomer(name: String, status: String) {
        customerNameLabel.text = name
        customerStatusLabel.text = status
    }

    func toggleButton(enabled: Bool) {
        refreshButton.isEnabled = enabled
    }

    func showActivityIndicator() {
        activityIndicator.startAnimating()
    }

    func hideActivityIndicator() {
        activityIndicator.stopAnimating()
    }
}
