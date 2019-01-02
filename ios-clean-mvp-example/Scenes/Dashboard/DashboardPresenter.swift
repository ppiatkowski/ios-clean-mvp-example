//
//  DashboardPresenter.swift
//  ios-clean-mvp-example
//
//  Created by Paweł Piątkowski on 28/11/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import Foundation

/**
 * MVP rules:
 *   - Presenter should not import UIKit. All UI work needs to happen in ViewController
 *   - Presenter does not reference View directly. It has to communicate using a protocol (in this case DashboardView protocol)
 *   - passing model to ViewController is not allowed. ViewController must not know anything about the model.
 *
 * Clean Architecture rules:
 *   - if Presenter contains too much logic move business logic to UseCase's and leave Presenter only with UI Logic and coordination logic
 *
 * Use Coordinators for navigation (only Coordinators should call methods like pushViewController, popViewController, present, dismiss
 */
class DashboardPresenter {

    fileprivate weak var view: DashboardViewProtocol?
    fileprivate weak var coordinatorDelegate: AppCoordinatorDelegate?
    fileprivate var customer: Customer?
    fileprivate var fetchCustomerUseCase = FetchCustomerUseCase()

    init(view: DashboardViewProtocol, coordinatorDelegate: AppCoordinatorDelegate) {
        self.view = view
        self.coordinatorDelegate = coordinatorDelegate
    }
}

extension DashboardPresenter: DashboardPresenterProtocol {
    func start() {
        fetchCustomerData()
    }

    func refreshButtonTapped() {
        fetchCustomerData()
    }

    func billButtonTapped() {
        coordinatorDelegate?.userDidTapBill()
    }


    private func fetchCustomerData() {
        view?.showActivityIndicator()
        view?.toggleButton(enabled: false)
        fetchCustomerUseCase.execute { [weak self] newCustomer in
            guard let strongSelf = self, let newCustomer = newCustomer else {
                return
            }
            strongSelf.view?.updateCustomer(name: newCustomer.name, status: newCustomer.status)
            strongSelf.view?.hideActivityIndicator()
            strongSelf.view?.toggleButton(enabled: true)
        }
    }
}
