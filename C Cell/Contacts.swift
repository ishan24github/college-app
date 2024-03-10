//
//  Contacts.swift
//  C Cell
//
//  Created by Ishan Arora on 17/11/19.
//  Copyright © 2019 Ishan Arora. All rights reserved.
//

import SwiftUI

struct Contacts: View {
    @State var selected = 0
    var body: some View {
        NavigationView {
            VStack {
                    Picker(selection: $selected, label: Text("")){
                        Text("hello").tag(0)
                        Text("bye").tag(1)
                        Text("Hello bye").tag(2)
                    }.pickerStyle(SegmentedPickerStyle())
//                        .padding()
//                Text("hello \(selected)")
//                    .padding()
                if selected == 0 {
                contactPage(items: testData1)
                }
                if selected == 1{
                    contactPage(items: testData2)
                }
                if selected == 2{
                    contactPage(items: testData3)
                }
                    
                    Spacer()
            }.navigationBarTitle("Contacts")
        }
    }
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        Contacts()
    }
}
