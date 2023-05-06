//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Камаль Атавалиев on 06.05.2023.
//

import SwiftUI


struct ContentView: View {
    
    private let person = Person.generateContacts()
    
    var body: some View {
        TabView {
            ContactListView(contactList: person)
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Contacts")
                }
            DetailsContactList(contactList: person)
                .tabItem {
                    Image(systemName: "phone")
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
