//
//  ProfileRouter.swift
//  TabBarWithVIPER
//
//  Created by Igor Fernandes on 07/03/23.
//

import UIKit

protocol ProfileRouterProtocol {
    var viewController: UIViewController? { get set }
    static func build() -> UIViewController
}

class ProfileRouter: ProfileRouterProtocol {
    weak var viewController: UIViewController?
    
    static func build() -> UIViewController {
        let view = ProfileViewController()
        let interactor = ProfileInteractor()
        let router = ProfileRouter()
        let presenter = ProfilePresenter(view: view, interactor: interactor, router: router)

        view.presenter = presenter
        router.viewController = view
        interactor.presenter = presenter

        return view
    }
}
