//
//  Contact.swift
//  ContactList
//
//  Created by Камаль Атавалиев on 02.03.2023.
//
// MARK: - Contact Struct Model

import Foundation

struct Person: Hashable, Identifiable {
    
    var id = UUID()
    let name: String
    let secondName: String
    let phoneNumber: String
    let email: String
    let icon = "contactIcon"
    
    var fullName: String {
        "\(name) \(secondName)"
    }
    static func generateContacts() -> [Person] {
        
        
        let namesShuf = DataStore.shared.namesData.shuffled()
        let secondNamesShuf = DataStore.shared.secondNamesData.shuffled()
        let phoneNumbersShuf = DataStore.shared.phoneNumbersData.shuffled()
        let emailShuf = DataStore.shared.emailData.shuffled()
        
        var contactList: [Person] = []
        
        for index in 0..<namesShuf.count {
            contactList.append(Person(
                name: namesShuf[index],
                secondName: secondNamesShuf[index],
                phoneNumber: phoneNumbersShuf[index],
                email: emailShuf[index])
            )
        }
        return contactList
    }
}

