//
//  website.swift
//  C Cell
//
//  Created by Ishan Arora on 17/11/19.
//  Copyright © 2019 Ishan Arora. All rights reserved.
//

import SwiftUI

struct webItem : Codable, Hashable {
    var webId = UUID()
    var webName : String
    var webLink : String
}

let testWeb = [
    webItem( webName: "hweld", webLink: "qwert"),
    webItem(webName: "fweds", webLink: "qwert")
]

struct website: View {
    var items : [webItem]
    var body: some View {
        List(items, id: \.webId){item in
            websitee(item: item)
        }
    }
}

struct website_Previews: PreviewProvider {
    static var previews: some View {
        website(items: testWeb)
    }
}

struct websitee: View {
    var item : webItem
    var body : some View{
        HStack{
            Text(item.webName)
                .font(.title)
            Spacer()
            Image(systemName: "person")
                .imageScale(.large)
                .onTapGesture {
                    let webUrl = URL(string: "https://" + self.item.webLink)!
                    UIApplication.shared.open(webUrl)
            }
        }
    }
}
