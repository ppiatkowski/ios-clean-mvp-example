//
//  BillViewController.swift
//  ios-clean-mvp-example
//
//  Created by Paweł Piątkowski on 13/12/2018.
//

import UIKit

class BillViewController: UIViewController {
    var presenter: BillPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        presenter?.start()
    }

}
