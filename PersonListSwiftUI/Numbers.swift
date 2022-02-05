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
                    HStack {
                        Image(systemName: "phone")
                            .foregroundColor(.blue)
                        Text("\(persons.phone)")
                    }
                    NavigationLink(destination: Detail(person: persons)) {
                        HStack {
                            Image(systemName: "tray")
                                .foregroundColor(.blue)
                            Text("\(persons.email)")
                        }
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Contact List")
        }
    }
}

struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        Numbers(contacts: Person.getPersonList())
    }
}
