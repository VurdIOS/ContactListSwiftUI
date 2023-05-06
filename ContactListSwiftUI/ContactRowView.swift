//
//  ContactRowView.swift
//  ContactListSwiftUI
//
//  Created by Камаль Атавалиев on 06.05.2023.
//

import SwiftUI

struct ContactRowView: View {
    
    let image: String
    let content: String
    
    var body: some View {
        HStack {
            Image(systemName: "\(image)")
                .foregroundColor(.blue)
                .frame(width: 30)
            Text("\(content)")
        }
    }
}

struct NumberEmailRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(image: "phone", content: "amsdas@asd.rt")
    }
}
