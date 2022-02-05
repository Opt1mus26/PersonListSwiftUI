//
//  ContentView.swift
//  PersonListSwiftUI
//
//  Created by Pavel Tsyganov on 04.02.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Contacts(contacts: Person.getPersonList())
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Users")
                }
            Numbers(contacts: Person.getPersonList())
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
