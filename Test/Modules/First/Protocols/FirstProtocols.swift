//
//  FirstProtocols.swift
//  Test
//
//  Created by Pedro Ramos on 2/05/20.
//  Copyright © 2020 Pedro Ramos. All rights reserved.
//

import UIKit

protocol FirstViewProtocol: class {
    var presenter: FirstPresenterProtocol? { get set }
    func updateData(_ newText: String)
}

protocol FirstRouterProtocol: class {
    var viewController: UIViewController? { get set }
    static func createModule() -> FirstViewController
}

protocol FirstPresenterProtocol: class {
    var interactor: FirstInteractorProtocol? { get set }
    var router: FirstRouterProtocol? { get set }
    var view: FirstViewProtocol? { get set }
    
    func getData()
}

protocol FirstInteractorProtocol: class {
    var presenter: FirstOutputInteractorProtocol? { get set }
}

protocol FirstOutputInteractorProtocol: class {
    
}
