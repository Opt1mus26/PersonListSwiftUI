//
//  Detail.swift
//  PersonListSwiftUI
//
//  Created by Pavel Tsyganov on 04.02.2022.
//

import SwiftUI

struct Detail: View {
    var person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: ImageContacts.person.rawValue)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
                Spacer()
            }
            RowView(image: ImageContacts.phone.rawValue,
                    text: person.phone)
            RowView(image: ImageContacts.email.rawValue,
                    text: person.email)
        }
        .navigationTitle("\(person.fullName)")
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail(person: Person.getPersonList().first!)
    }
}
