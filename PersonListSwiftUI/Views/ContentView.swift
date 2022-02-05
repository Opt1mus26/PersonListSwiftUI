//
//  ContentView.swift
//  PersonListSwiftUI
//
//  Created by Pavel Tsyganov on 04.02.2022.
//

import SwiftUI

struct ContentView: View {
    private var contacts = Person.getPersonList()
    
    var body: some View {
        TabView {
            Contacts(contacts: contacts)
                .tabItem {
                    Image(systemName: ImageContacts.contacts.rawValue)
                    Text("Contacts")
                }
            Numbers(contacts: contacts)
                .tabItem {
                    Image(systemName: ImageContacts.phone.rawValue)
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
