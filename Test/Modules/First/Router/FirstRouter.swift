//
//  FirstRouter.swift
//  Test
//
//  Created by Pedro Ramos on 2/05/20.
//  Copyright © 2020 Pedro Ramos. All rights reserved.
//

import UIKit

class FirstRouter: FirstRouterProtocol {
    weak var viewController: UIViewController?
    
    static func createModule() -> FirstViewController {
        let ref = FirstViewController()
        let presenter: FirstPresenterProtocol & FirstOutputInteractorProtocol = FirstPresenter()
        
        let interactor: FirstInteractorProtocol = FirstInteractor()
        interactor.presenter = presenter
        
        let router: FirstRouterProtocol = FirstRouter()
        router.viewController = ref
        
        presenter.view = ref
        presenter.interactor = interactor
        presenter.router = router
        
        ref.presenter = presenter
        return ref
    }
}
