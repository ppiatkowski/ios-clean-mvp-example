//
//  Coordinator.swift
//  ios-clean-mvp-example
//
//  Created by Paweł Piątkowski on 28/11/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }

    func start()
}
