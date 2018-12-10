//
//  FetchCustomerUseCase.swift
//  ios-clean-mvp-example
//
//  Created by Paweł Piątkowski on 10/12/2018.
//

import Foundation

class FetchCustomerUseCase {

    func execute(completion: @escaping (Customer?) -> Void) {

        // In normal this method would send a request
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0) { [weak self] in
            guard let strongSelf = self else {
                completion(nil)
                return
            }
            let name = strongSelf.randomName()
            let status = strongSelf.randomStatus()

            completion(Customer(name: name, status: status))
        }
    }

    private func randomName() -> String {
        let firstNamePool = ["John", "Paul", "Jim", "Robert", "Ann", "Kate", "Emily", "Jane"]
        let lastNamePool = ["Appleseed", "Martin", "Torvalds", "Kernighan", "Ritchie", "Lovelace"]

        let firstName = firstNamePool.randomElement() ?? ""
        let lastName = lastNamePool.randomElement() ?? ""
        return firstName + " " + lastName
    }

    private func randomStatus() -> String {
        let statusPool = ["ACTIVE", "EXPIRED", "UNKNOWN"]
        return statusPool.randomElement() ?? ""
    }
}
