//
//  DetailsScreenView.swift
//  ContactListSwiftUI
//
//  Created by Камаль Атавалиев on 06.05.2023.
//

import SwiftUI

struct DetailsScreenView: View {
    
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                .padding()
                Spacer()
            }
            ContactRowView(image: "phone", content: person.phoneNumber)
            ContactRowView(image: "tray", content: person.email)
                  
           
        } .navigationTitle("\(person.fullName)")
    }
}

struct DetailsScreenView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsScreenView(person:Person.generateContacts()[0])
    }
}
