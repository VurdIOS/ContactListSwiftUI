//
//  DetailsContactList.swift
//  ContactListSwiftUI
//
//  Created by Камаль Атавалиев on 06.05.2023.
//

import SwiftUI

struct DetailsContactList: View {
    
    let contactList: [Person]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(contactList) { contact in
                    Section("\(contact.fullName)") {
                        ContactRowView(
                            image: "phone",
                            content: contact.phoneNumber
                        )
                        ContactRowView(
                            image: "tray",
                            content: contact.email
                        )
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}


struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsContactList(contactList: Person.generateContacts())
    }
}
