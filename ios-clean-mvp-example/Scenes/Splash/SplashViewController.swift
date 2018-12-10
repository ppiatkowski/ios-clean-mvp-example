//
//  SplashViewController.swift
//  ios-clean-mvp-example
//
//  Created by Paweł Piątkowski on 29/11/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {
    var presenter: SplashPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presenter?.start()
    }
}

extension SplashViewController: SplashViewProtocol {
    
}
