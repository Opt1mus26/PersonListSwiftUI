//
//  Person.swift
//  PersonListSwiftUI
//
//  Created by Pavel Tsyganov on 04.02.2022.
//

import SwiftUI

struct Person: Identifiable {
    let id: Int
    let name: String
    let lastName: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }
}

extension Person {
    static func getPersonList() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let lastName = DataManager.shared.lastNames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        for index in 0...9 {
            let person = Person(id: index + 1,
                                name: names[index],
                                lastName: lastName[index],
                                phone: phones[index],
                                email: emails[index])
            persons.append(person)
        }
        return persons
    }
}

enum ImageContacts: String {
    case phone = "phone"
    case email = "tray"
    case person = "person.fill"
    case contacts = "person.2"
}
