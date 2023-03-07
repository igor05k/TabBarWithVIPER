//
//  ProfilePresenter.swift
//  TabBarWithVIPER
//
//  Created by Igor Fernandes on 07/03/23.
//

import Foundation

protocol ProfilePresenterProtocol: AnyObject {
    var view: ProfileViewProtocol? { get set }
    var interactor: ProfileInteractorProtocol { get set }
    var router: ProfileRouterProtocol { get set }
    
}

class ProfilePresenter: ProfilePresenterProtocol {
    weak var view: ProfileViewProtocol?
    var interactor: ProfileInteractorProtocol
    var router: ProfileRouterProtocol
    
    init(view: ProfileViewProtocol, interactor: ProfileInteractorProtocol, router: ProfileRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}
