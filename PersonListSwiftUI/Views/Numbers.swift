//
//  ImageDetail.swift
//  PersonListSwiftUI
//
//  Created by Pavel Tsyganov on 05.02.2022.
//

import SwiftUI

struct Numbers: View {
    var contacts: [Person]
    var body: some View {
        NavigationView {
            List(contacts) { persons in
                Section(header: Text("\(persons.fullName)")) {
                    RowView(image: ImageContacts.phone.rawValue,
                            text: persons.phone)
                    RowView(image: ImageContacts.email.rawValue,
                            text: persons.email)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        Numbers(contacts: Person.getPersonList())
    }
}
