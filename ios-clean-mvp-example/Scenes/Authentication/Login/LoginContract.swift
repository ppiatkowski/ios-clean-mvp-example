//
//  LoginContract.swift
//  ios-clean-mvp-example
//
//  Created by Paweł Piątkowski on 29/11/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import Foundation

protocol LoginViewProtocol: class {
    // can be use by 'remember me' feature to populate text fields
    func enterCredentials(phoneNumber: String, password: String)

    func showMessage(_ message: String?)
    func toggleButtons(enabled: Bool)
    func showActivityIndicator()
    func hideActivityIndicator()

}

protocol LoginPresenterProtocol: Presenter {
    func loginButtonTapped(phoneNumber: String?, password: String?)
    func registerButtonTapped()
}
