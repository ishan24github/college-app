//
//  FAQs.swift
//  C Cell
//
//  Created by Ishan Arora on 17/11/19.
//  Copyright © 2019 Ishan Arora. All rights reserved.
//

import SwiftUI

struct FAQ : Codable, Hashable{
    var FAId = UUID()
    var Ouestion : String
    var answer : String
}
let testFAQs = [
    FAQ(Ouestion: "is it?", answer: "it is"),
    FAQ(Ouestion: "is that?", answer: "that is")
]

struct FAQsList : View{
    var items : [FAQ]
    var body : some View{
        List(items, id: \.FAId){item in
            FAQs(item: item)
            .padding()
        }
    }
}

struct FAQs: View {
    @State var answered = false
    var item : FAQ
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                VStack{
                    HStack {
                        Text(self.item.Ouestion)
                            .font(.title)
                        Spacer()
                        Image(systemName: self.answered ? "arrow.up" : "arrow.down")
                            .imageScale(.large)
                            .onTapGesture {
                                self.answered.toggle()
                        }
                    }
                    .padding(.bottom)
                        .background(Color.gray)
                    .frame(width: geo.size.width*8/9, height: 50)
                    if self.answered {
                        Text(self.item.answer)
                            .font(.title)
    //                        .padding(.top)
                    }
                }.frame(width: geo.size.width*8/9, height: self.answered ? 200 : 70,alignment: .top)
                .padding()
                    
            }.navigationBarTitle(Text("FAQs"))
        }
    }
}

struct FAQs_Previews: PreviewProvider {
    static var previews: some View {
        FAQsList(items: testFAQs)
    }
}
