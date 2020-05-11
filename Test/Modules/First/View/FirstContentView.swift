//
//  FirstContentView.swift
//  Test
//
//  Created by Pedro Ramos on 2/05/20.
//  Copyright © 2020 Pedro Ramos. All rights reserved.
//

import SwiftUI

struct FirstContentView: View {
    
    @ObservedObject var observable: FirstContentViewObservable
    
    var body: some View {
        VStack {
            Text(self.observable.text)
        }
    }
}

struct FirstContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstContentView(observable: FirstContentViewObservable())
    }
}
