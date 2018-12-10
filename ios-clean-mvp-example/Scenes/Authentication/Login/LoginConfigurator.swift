//
//  LoginConfigurator.swift
//  ios-clean-mvp-example
//
//  Created by Paweł Piątkowski on 29/11/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import Foundation

class LoginConfigurator {

    func configure(delegate: AuthCoordinatorDelegate) -> LoginViewController {
        let viewController = LoginViewController.instantiate()
        let presenter = LoginPresenter(view: viewController, delegate: delegate)
        viewController.presenter = presenter
        return viewController
    }
}
