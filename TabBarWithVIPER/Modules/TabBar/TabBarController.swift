//
//  TabBarController.swift
//  TabBarWithVIPER
//
//  Created by Igor Fernandes on 06/03/23.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        super.setViewControllers(viewControllers, animated: animated)
        
        tabBar.tintColor = .white
    }
}
