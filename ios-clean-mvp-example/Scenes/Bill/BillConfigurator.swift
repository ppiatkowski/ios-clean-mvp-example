//
//  BillConfigurator.swift
//  ios-clean-mvp-example
//
//  Created by Paweł Piątkowski on 13/12/2018.
//

import Foundation

class BillConfigurator {

    func configure(coordinatorDelegate: AppCoordinatorDelegate) -> BillViewController {
        let viewController = BillViewController.instantiate()
        let presenter = BillPresenter(coordinatorDelegate: coordinatorDelegate)
        viewController.presenter = presenter
        return viewController
    }
}
