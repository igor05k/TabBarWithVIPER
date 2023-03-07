//
//  HomeView.swift
//  TabBarWithVIPER
//
//  Created by Igor Fernandes on 06/03/23.
//

import UIKit

protocol HomeViewProtocol: AnyObject {
    var presenter: HomePresenter? { get set }
}

class HomeViewController: UIViewController, HomeViewProtocol {
    var presenter: HomePresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightText
    }
}
