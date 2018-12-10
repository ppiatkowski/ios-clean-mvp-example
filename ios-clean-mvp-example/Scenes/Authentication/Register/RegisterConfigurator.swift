//
//  RegisterConfigurator.swift
//  ios-clean-mvp-example
//
//  Created by Paweł Piątkowski on 29/11/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import Foundation

class RegisterConfigurator {

    func configure(delegate: AuthCoordinatorDelegate) -> RegisterViewController {
        let viewController = RegisterViewController.instantiate()
        let presenter = RegisterPresenter(view: viewController, delegate: delegate)
        viewController.presenter = presenter
        return viewController
    }
}
