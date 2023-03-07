//
//  ProfileInteractor.swift
//  TabBarWithVIPER
//
//  Created by Igor Fernandes on 07/03/23.
//

import Foundation

protocol ProfileInteractorProtocol {
    var presenter: ProfilePresenterProtocol? { get set }
    func fetchItems()
}


class ProfileInteractor: ProfileInteractorProtocol {
    var presenter: ProfilePresenterProtocol?
    
    func fetchItems() {
        
    }
}
