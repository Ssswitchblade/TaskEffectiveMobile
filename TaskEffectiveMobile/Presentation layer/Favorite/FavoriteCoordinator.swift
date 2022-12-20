//
//  FavoriteCoordinator.swift
//  TaskEffectiveMobile
//
//  Created by Admin on 08.12.22.
//

import UIKit

final class FavoriteCoordinator: BaseCoordinator {

    // MARK: - Properies
    private let moduleFactory: ModuleFactoryProtocol
    private let router: Router

    // MARK: - Init
    init(router: Router, moduleFactory: ModuleFactoryProtocol) {
        self.moduleFactory = moduleFactory
        self.router = router
    }

    // MARK: - Navigation functions
    override func start() {
        showFavoriteScreen()
    }

    // MARK: -
    private func showFavoriteScreen() {

        
    }
}
