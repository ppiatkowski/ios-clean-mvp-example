//
//  RegisterPresenter.swift
//  ios-clean-mvp-example
//
//  Created by Paweł Piątkowski on 29/11/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import Foundation

class RegisterPresenter {
    fileprivate weak var view: RegisterViewProtocol?
    fileprivate weak var coordinatorDelegate: AuthCoordinatorDelegate?

    init(view: RegisterViewProtocol, delegate: AuthCoordinatorDelegate) {
        self.view = view
        self.coordinatorDelegate = delegate
    }
}

extension RegisterPresenter: RegisterPresenterProtocol {

    func start() {
    }
}
