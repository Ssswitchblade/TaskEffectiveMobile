//
//  BaseCoordinator.swift
//  TaskEffectiveMobile
//
//  Created by Admin on 07.12.22.
//

import Foundation

protocol Coordinatable: AnyObject {
    func start()
}

class BaseCoordinator: Coordinatable {

    var childCoordinators: [Coordinatable] = []

    func start() {}

    func retain(_ coordinator: Coordinatable) {
        guard !childCoordinators.contains(where: { $0 === coordinator }) else { return }
        childCoordinators.append(coordinator)
    }

    func release(_ coordinator: Coordinatable?) {
        guard
            childCoordinators.isEmpty == false,
            let coordinator = coordinator
        else { return }

        if let coordinator = coordinator as? BaseCoordinator, !coordinator.childCoordinators.isEmpty {
            coordinator.childCoordinators
                .filter({ $0 !== coordinator })
                .forEach({ coordinator.release($0) })
        }
        for (index, element) in childCoordinators.enumerated() where element === coordinator {
            childCoordinators.remove(at: index)
            break
        }
    }
}
