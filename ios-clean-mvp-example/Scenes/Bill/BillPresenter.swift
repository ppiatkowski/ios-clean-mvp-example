//
//  BillPresenter.swift
//  ios-clean-mvp-example
//
//  Created by Paweł Piątkowski on 13/12/2018.
//

import Foundation


class BillPresenter {

    fileprivate weak var coordinatorDelegate: AppCoordinatorDelegate?

    init(coordinatorDelegate: AppCoordinatorDelegate) {
        self.coordinatorDelegate = coordinatorDelegate
    }
}


extension BillPresenter: BillPresenterProtocol {
    func start() {
        // TODO
    }

}
