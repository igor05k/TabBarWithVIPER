//
//  TabBarRouter.swift
//  TabBarWithVIPER
//
//  Created by Igor Fernandes on 06/03/23.
//

import UIKit

protocol TabBarRouterProtocol {
    var viewController: UITabBarController? { get set }
    static func build() -> UIViewController
}

class TabBarRouter: TabBarRouterProtocol {
    weak var viewController: UITabBarController?

    static func build() -> UIViewController {
        let view = MainTabBarController()
        let homeVC = HomeRouter.build()
        let profileVC = ProfileRouter.build()
        
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        profileVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person"), tag: 2)
        
        view.setViewControllers([homeVC, profileVC], animated: true)

        let router = TabBarRouter()
        router.viewController = view

        return view
    }
}
