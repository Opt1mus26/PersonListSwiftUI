//
//  Contacts.swift
//  PersonListSwiftUI
//
//  Created by Pavel Tsyganov on 04.02.2022.
//

import SwiftUI

struct Contacts: View {
    var contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { persons in
                NavigationLink(destination: Detail(person: persons)) {
                    Text("\(persons.fullName)")
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        Contacts(contacts: Person.getPersonList())
    }
}
