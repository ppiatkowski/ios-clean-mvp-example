//
//  DashboardContract.swift
//  ios-clean-mvp-example
//
//  Created by Paweł Piątkowski on 29/11/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import Foundation

protocol DashboardViewProtocol: class {
    func updateCustomer(name: String, status: String)

    func toggleButton(enabled: Bool)
    func showActivityIndicator()
    func hideActivityIndicator()
}

protocol DashboardPresenterProtocol: Presenter {
    func refreshButtonTapped()
}
