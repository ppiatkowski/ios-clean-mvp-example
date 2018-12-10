//
//  AuthCoordinator.swift
//  ios-clean-mvp-example
//
//  Created by Paweł Piątkowski on 29/11/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import UIKit

/**
  * AuthCoordinator handles authentication flow navigation
  */
protocol AuthCoordinatorDelegate: AnyObject {
    func userDidTapRegister()
    func userDidLogIn()
}

class AuthCoordinator: Coordinator {
    var navigationController: UINavigationController
    fileprivate weak var delegate: RootCoordinatorDelegate?

    init(navigationController: UINavigationController, delegate: RootCoordinatorDelegate) {
        self.navigationController = navigationController
        self.delegate = delegate
    }

    func start() {
        let viewController = LoginConfigurator().configure(delegate: self)
        navigationController.pushViewController(viewController, animated: false)
    }

    func exit() {
        delegate?.userDidLogIn()
    }
}

extension AuthCoordinator: AuthCoordinatorDelegate {

    func userDidLogIn() {
        exit()
    }

    func userDidTapRegister() {
        let viewController = RegisterConfigurator().configure(delegate: self)
        navigationController.pushViewController(viewController, animated: true)
    }
}
