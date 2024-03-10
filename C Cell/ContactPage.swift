//
//  ContactPage.swift
//  C Cell
//
//  Created by Ishan Arora on 17/11/19.
//  Copyright © 2019 Ishan Arora. All rights reserved.
//

import SwiftUI
import Contacts

struct itemName : Codable,Hashable{
    var IId = UUID()
    var number : String
    var name : String
    var mail : String
}
let testData1 = [
    itemName(number: "1234567890", name: "person1", mail: "example@email.com"),
    itemName(number: "1234567890", name: "person2", mail: "example@email.com")
]
let testData2 = [
    itemName(number: "123456", name: "person3", mail: "example@email.com"),
    itemName(number: "123456", name: "person4", mail: "example@email.com")
]
let testData3 = [
    itemName(number: "123456", name: "person5", mail: "example@email.com"),
    itemName(number: "123456", name: "person6", mail: "example@email.com")
]


struct contactPage: View {
    var items : [itemName]
    var body : some View{
        List(items, id: \.IId){item in
            ContactItem(item: item)
        }
    }
}


struct ContactItem: View {
//    @Environment(\.managedObjectContext) var context
//    @FetchRequest(fetchRequest: Checked.getdata()) var gett:FetchedResults<Checked>
    let defaults = UserDefaults.standard
    var item : itemName
    @State var added = false
    
    var body: some View {
                    HStack{
                        Text(item.name)
                            .font(.title)
                        Spacer()
                            Image(systemName: "phone.fill")
                            .foregroundColor(.green)
                            .imageScale(.large)
                            .padding(.trailing,7)
                                .onTapGesture {
                                    let url = URL(string : "tel://" + self.item.number)!
                                    UIApplication.shared.open(url)
                            }
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.blue)
                            .imageScale(.large)
                            .padding(.trailing,7)
                            .onTapGesture {
                                let url = URL(string: "mailto:" + self.item.mail)!
                                UIApplication.shared.open(url)
                            }
                            Image(systemName: "person.crop.circle.badge.plus")
                                .foregroundColor(self.added ? .blue : .gray)
                                .imageScale(.large)
                                .onAppear(){
                                    let changed = self.defaults.bool(forKey: self.item.name)
                                    if changed{
                                        self.added = true
                                    }
                            }
                                .onTapGesture {
                                    print(self.added)
                                    if self.added == false{
                                    let store = CNContactStore()
                                    let newContact = CNMutableContact()
                                    newContact.givenName = self.item.name
                                    newContact.familyName = self.item.name
                                    let saveRequest = CNSaveRequest()
                                    saveRequest.add(newContact, toContainerWithIdentifier: nil)
                                        try! store.execute(saveRequest)
                                    }
                                    self.added = true
                                    self.defaults.set(self.added, forKey: self.item.name)
//                                    let checked = Checked(context: self.context)
//                                    checked.checked = true
//                                    checked.name = self.item.name
//                                    do {
//                                        try self.context.save()
//                                        print("saved")
//                                    }catch{
//                                        print(error)
//                                    }
                            }
        }.padding(.top,7)
    }
}

struct contactPage_Previews: PreviewProvider {
    static var previews: some View {
        contactPage(items: testData1)
    }
}

