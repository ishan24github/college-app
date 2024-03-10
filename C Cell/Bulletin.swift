//
//  Bulletin.swift
//  C Cell
//
//  Created by Ishan Arora on 17/11/19.
//  Copyright © 2019 Ishan Arora. All rights reserved.
//

import SwiftUI

struct Response : Codable{
     var results : [Result]
}

struct Result:  Codable{
    var trackId: Int
    var trackName : String
    var collectionName: String
}

struct Bulletin: View {
    @State var dataa = [Result]()
    @State var isShowing = false
    
    var body: some View {
        NavigationView {
            
            GeometryReader { geo in
                List(self.dataa,id: \.trackId){ item in
                Button(action: {self.isShowing.toggle()}) {
                    ZStack(alignment: .topTrailing) {
                        VStack(alignment: .leading) {
                                BulletinItem(results: item)
                    }.frame(width: geo.size.width*8/9 , height: 90)
                            .background(Color.green)
                            .cornerRadius(10)
//                                new()
//                                    .offset(x: 10, y: -5)
                        
                    }
                }.sheet(isPresented: self.$isShowing){
                    SheetView(CompleteData : item)
                        .onAppear(){
                            
                    }
                }
              }.onAppear(perform: self.loadData)
                    .navigationBarTitle(Text("Songs"))
            }
        }
    }
    func loadData(){
        guard let url = URL(string: "https://itunes.apple.com/search?term=taylor+swift&entity=song") else {
            print("invalid url")
            return
        }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request){data, response, error in
            if let data = data{
                if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data){
                    DispatchQueue.main.async {
                        self.dataa = decodedResponse.results
                    }
                    return
                }
            }
        }.resume()
    }
}



struct Bulletin_Previews: PreviewProvider {
    static var previews: some View {
        Bulletin()
    }
}
