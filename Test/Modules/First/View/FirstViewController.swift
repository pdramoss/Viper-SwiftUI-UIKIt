//
//  FirstViewController.swift
//  Test
//
//  Created by Pedro Ramos on 2/05/20.
//  Copyright © 2020 Pedro Ramos. All rights reserved.
//

import UIKit
import SwiftUI

class FirstViewController: UIViewController {
    
    var observable: FirstContentViewObservable = FirstContentViewObservable()
    var presenter: FirstPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupObservable()
        addHostingViewController()
    }
    
    private func setupObservable() {
        
    }
    
    private func addHostingViewController() {
        let firstHostingView = UIHostingController(rootView: FirstContentView(observable: self.observable))
        addChild(firstHostingView)
        view.addSubview(firstHostingView.view)
        firstHostingView.didMove(toParent: self)
        setFirstHostingViewConstraints(firstHostingView)
    }
    
    private func setFirstHostingViewConstraints(_ childView: UIViewController) {
        childView.view.translatesAutoresizingMaskIntoConstraints = false
        childView.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        childView.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        childView.view.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        childView.view.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
}

extension FirstViewController: FirstViewProtocol {
    func updateData(_ newText: String) {
        self.observable.text = newText
    }
}
