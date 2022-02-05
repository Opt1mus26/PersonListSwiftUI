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
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 200, height: 200, alignment: .center)
                    .padding()
                    Spacer()
                }
                HStack {
                    Image(systemName: "phone")
                        .foregroundColor(.blue)
                    Text("\(person.phone)")
                        .padding()
                }
                HStack {
                    Image(systemName: "tray")
                        .foregroundColor(.blue)
                    Text("\(person.email)")
                        .padding()
                }
            }
            .navigationTitle("\(person.fullName)")
        }
    }

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail(person: Person.getPersonList().first!)
    }
}
