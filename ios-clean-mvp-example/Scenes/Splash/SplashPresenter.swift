//
//  SplashPresenter.swift
//  ios-clean-mvp-example
//
//  Created by Paweł Piątkowski on 29/11/2018.
//  Copyright © 2018 Paweł Piątkowski. All rights reserved.
//

import Foundation

class SplashPresenter {
    fileprivate weak var view: SplashViewProtocol?

    // TODO RootCoordinatorDelegate zamiast RootCoordinatora
    fileprivate weak var coordinator: RootCoordinator?

    init(view: SplashViewProtocol, coordinator: RootCoordinator) {
        self.view = view
        self.coordinator = coordinator
    }
}

extension SplashPresenter: SplashPresenterProtocol {
    
    func start() {
        // normal app would perform some startup logic here (using a Use Case)
        // we're just going to pretend something is happening for some time
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3.0) { [weak self] in
            guard let strongSelf = self else {
                return
            }

            // in normal app we would check if we need to authenticate the user again and handle 'remember me'.
            //  This would be business logic and should be done via Use Case (for example of Use Case see LoginUseCase class)

            // splashDidFinish na delegacie, delegate decyduje jak zareagować a nie hardkodowanie dalszego zachowania w splashu
            strongSelf.coordinator?.navigateToAuthenticationFlow()
        }
    }
}
