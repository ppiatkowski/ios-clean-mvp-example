//
//  SplashConfigurator.swift
//  ios-clean-mvp-example
//
//  Created by Paweł Piątkowski on 29/11/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import Foundation

class SplashConfigurator {

    func configure(coordinator: RootCoordinator) -> SplashViewController {
        let viewController = SplashViewController.instantiate()
        let presenter = SplashPresenter(view: viewController, coordinator: coordinator)
        viewController.presenter = presenter
        return viewController
    }
}
