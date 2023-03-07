//
//  HomeRouter.swift
//  TabBarWithVIPER
//
//  Created by Igor Fernandes on 06/03/23.
//

import UIKit

protocol HomeRouterProtocol {
    var viewController: UIViewController? { get set }
    static func build() -> UIViewController
}

class HomeRouter: HomeRouterProtocol {
    weak var viewController: UIViewController?
    
    static func build() -> UIViewController {
        let view = HomeViewController()
        let interactor = HomeInteractor()
        let router = HomeRouter()
        let presenter = HomePresenter(view: view, interactor: interactor, router: router)

        view.presenter = presenter
        router.viewController = view
        interactor.presenter = presenter

        return view
    }
}

