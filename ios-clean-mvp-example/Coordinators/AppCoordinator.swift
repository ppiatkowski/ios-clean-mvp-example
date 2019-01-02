//
//  AppCoordinator.swift
//  ios-clean-mvp-example
//
//  Created by Paweł Piątkowski on 29/11/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import UIKit

protocol AppCoordinatorDelegate: AnyObject {
    func userDidTapBill()
}

/**
 * AppCoordinator handles navigation of the app. Can have child coordinators for features.
 */
class AppCoordinator: Coordinator {
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let viewController = DashboardConfigurator().configure(coordinatorDelegate: self)
        navigationController.pushViewController(viewController, animated: false)
    }
}

extension AppCoordinator: AppCoordinatorDelegate {
    func userDidTapBill() {
        navigateToBill()
    }

    private func navigateToBill() {
        let viewController = BillConfigurator().configure(coordinatorDelegate: self)
        navigationController.pushViewController(viewController, animated: true)
    }
}
