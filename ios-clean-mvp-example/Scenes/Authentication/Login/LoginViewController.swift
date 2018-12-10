//
//  LoginViewController.swift
//  ios-clean-mvp-example
//
//  Created by Paweł Piątkowski on 29/11/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    var presenter: LoginPresenterProtocol?

    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var feedbackLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        activityIndicator.stopAnimating()
        presenter?.start()
    }

    @IBAction func loginButtonTouchUpInside(_ sender: Any) {
        presenter?.loginButtonTapped(phoneNumber: phoneNumberTextField.text, password: passwordTextField.text)
    }
    
    @IBAction func registerButtonTouchUpInside(_ sender: Any) {
        presenter?.registerButtonTapped()
    }
}


extension LoginViewController: LoginViewProtocol {
    func enterCredentials(phoneNumber: String, password: String) {
        phoneNumberTextField.text = phoneNumber
        passwordTextField.text = password
    }

    func showMessage(_ message: String?) {
        feedbackLabel.text = message
    }

    func toggleButtons(enabled: Bool) {
        loginButton.isEnabled = enabled
        registerButton.isEnabled = enabled
    }

    func showActivityIndicator() {
        activityIndicator.startAnimating()
    }

    func hideActivityIndicator() {
        activityIndicator.stopAnimating()
    }
}
