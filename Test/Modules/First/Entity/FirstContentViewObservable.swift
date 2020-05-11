//
//  FirstContentViewObservable.swift
//  Test
//
//  Created by Pedro Ramos on 2/05/20.
//  Copyright © 2020 Pedro Ramos. All rights reserved.
//

import Foundation
import SwiftUI

class FirstContentViewObservable: ObservableObject {
    @Published var text: String = "Example"
}
