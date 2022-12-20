//
//  ModuleFactory.swift
//  TaskEffectiveMobile
//
//  Created by Admin on 07.12.22.
//

import Foundation

protocol ModuleFactoryProtocol {
    func makeTabBarModule() -> TabBarController
    func makeMainModule() -> MainViewController
    
    func makeFavoriteModule() -> FavoriteViewController
    func makeBusketModule() -> BusketViewController
    func makeProfileModule() -> ProfileViewController
    func makeProductModule() -> ProductViewController
}

final class ModuleFactory: ModuleFactoryProtocol {
    
    private lazy var container = DIContainer()
    
    func makeMainModule() -> MainViewController {
        let viewModel = MainViewModel(basketService: container.basketService, mainService: container.mainService, productService: container.productService)
        return MainViewController(mainViewModel: viewModel)
    }
    
    func makeTabBarModule() -> TabBarController {
        return TabBarController()
    }

    func makeFavoriteModule() -> FavoriteViewController {
        return FavoriteViewController()
    }
    func makeBusketModule() -> BusketViewController {
        let viewModel = BasketViewModel(basketService: container.basketService)
        return BusketViewController(basketViewModel: viewModel)
    }
    func makeProfileModule() -> ProfileViewController {
        return ProfileViewController()
    }
    
    func makeProductModule() -> ProductViewController {
        let viewModel = ProductViewModel(service: container.productService)
        return ProductViewController(viewModel: viewModel)
    }
    
}

