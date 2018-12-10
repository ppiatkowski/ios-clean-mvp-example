//
//  DashboardConfigurator.swift
//  ios-clean-mvp-example
//
//  Created by Paweł Piątkowski on 28/11/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import Foundation

class DashboardConfigurator {

    func configure(coordinatorDelegate: AppCoordinatorDelegate) -> DashboardViewController {
        let viewController = DashboardViewController.instantiate()
        let presenter = DashboardPresenter(view: viewController, coordinatorDelegate: coordinatorDelegate)
        viewController.presenter = presenter
        return viewController
    }
}
