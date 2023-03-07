//
//  HomeInteractor.swift
//  TabBarWithVIPER
//
//  Created by Igor Fernandes on 06/03/23.
//

import Foundation

protocol HomeInteractorProtocol {
    var presenter: HomePresenter? { get set }
    func fetchItems()
}


class HomeInteractor: HomeInteractorProtocol {
    var presenter: HomePresenter?
    
    func fetchItems() {
        
    }
}
