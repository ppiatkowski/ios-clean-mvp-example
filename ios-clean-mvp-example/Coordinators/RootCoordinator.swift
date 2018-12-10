//
//  AppCoordinator.swift
//  ios-clean-mvp-example
//
//  Created by Paweł Piątkowski on 28/11/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import UIKit

protocol RootCoordinatorDelegate: AnyObject {
    func splashDidFinish()
    func userDidLogIn()
}

/**
 * AppCoordinator handles setting rootViewController. It displays Splash and can switch either to AppCoordinator (if user is logged in) or to AuthCoordinator to show authentication flow
 */
class RootCoordinator: Coordinator {
    var navigationController: UINavigationController

    // child coordinators
    var appCoordinator: AppCoordinator?
    var authCoordinator: AuthCoordinator?

    // RootCoordinator is a special case of Coordinator it manages the Splash Screen which requires it to change window.rootViewController
    //  other controllers should not have a window reference. They should just push/pop on navigationController
    let window: UIWindow

    init(window: UIWindow) {
        self.window = window
        self.navigationController = UINavigationController()
    }

    func start() {
        let splashViewController = SplashConfigurator().configure(coordinator: self)
        window.rootViewController = splashViewController
        window.makeKeyAndVisible()
    }

    func navigateToDashboard() {
        self.navigationController = UINavigationController()
        window.rootViewController = self.navigationController
        self.appCoordinator = AppCoordinator(navigationController: self.navigationController)
        self.appCoordinator?.start()
        self.authCoordinator = nil
    }

    func navigateToAuthenticationFlow() {
        self.navigationController = UINavigationController()
        window.rootViewController = self.navigationController
        self.authCoordinator = AuthCoordinator(navigationController: self.navigationController, delegate: self)
        self.authCoordinator?.start()
        self.appCoordinator = nil
    }
}

extension RootCoordinator: RootCoordinatorDelegate {

    func splashDidFinish() {
        navigateToAuthenticationFlow()
    }

    func userDidLogIn() {
        navigateToDashboard()
    }
}
