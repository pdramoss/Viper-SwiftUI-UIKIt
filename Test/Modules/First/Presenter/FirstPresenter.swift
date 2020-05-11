//
//  FirstPresenter.swift
//  Test
//
//  Created by Pedro Ramos on 2/05/20.
//  Copyright © 2020 Pedro Ramos. All rights reserved.
//

import Foundation

class FirstPresenter: FirstPresenterProtocol {
    weak var view: FirstViewProtocol?
    var interactor: FirstInteractorProtocol?
    var router: FirstRouterProtocol?
    
    func getData() {
        self.view?.updateData("TEST TEST TEST TEST")
    }
}

extension FirstPresenter: FirstOutputInteractorProtocol {
    
}
