//
//  RowView.swift
//  PersonListSwiftUI
//
//  Created by Pavel Tsyganov on 05.02.2022.
//

import SwiftUI

struct RowView: View {
    let image: String
    let text: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.blue)
            Text(text)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(image: ImageContacts.email.rawValue, text: Person.getPersonList().first!.email)
    }
}
