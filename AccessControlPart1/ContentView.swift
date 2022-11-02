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
                self.id = person.displayId()
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    Management.updateID(for: person, with: "New ID")
                    self.id = person.displayId()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
