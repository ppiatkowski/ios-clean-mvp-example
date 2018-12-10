//
//  LoginUseCase.swift
//  ios-clean-mvp-example
//
//  Created by Paweł Piątkowski on 29/11/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import Foundation

class LoginUseCase {

    func login(withPhoneNumber phoneNumber: String, password: String, completion: @escaping (Bool) -> Void) {

        // In normal app we sen authentication request(s) here
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0) { [weak self] in
            guard let strongSelf = self else {
                completion(false)
                return
            }
            let success = strongSelf.authenticated(phoneNumber: phoneNumber, password: password)
            completion(success)
        }
    }

    private func authenticated(phoneNumber: String, password: String) -> Bool {
        return password != "0" // just for testing
    }
}
