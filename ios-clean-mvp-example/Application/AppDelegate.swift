//
//  AppDelegate.swift
//  ios-clean-mvp-example
//
//  Created by Paweł Piątkowski on 28/11/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    private var coordinator: RootCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        coordinator = RootCoordinator(window: window)
        coordinator?.start()
        return true
    }


}

