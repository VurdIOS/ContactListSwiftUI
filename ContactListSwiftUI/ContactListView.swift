//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Камаль Атавалиев on 06.05.2023.
//

import SwiftUI

struct ContactListView: View {
    
    let contactList: [Person]
    
    var body: some View {
        NavigationStack {
            List(contactList) { contact in
                NavigationLink(destination: DetailsScreenView(person: contact)) {        Text(contact.fullName)
                }
            }
            .navigationTitle("Contacts")
            .listStyle(.plain)
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contactList: Person.generateContacts())
    }
}
