//
//  ContentView.swift
//  AccessControlPart1
//
//  Created by Stewart Lynch on 2020-05-30.
//  Copyright © 2020 CreaTECH Solutions. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var id: String = ""
    var body: some View {
        Text("\(id)")
            .onAppear {
                let person = Person()
                self.id = person.id
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
