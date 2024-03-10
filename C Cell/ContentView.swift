//
//  ContentView.swift
//  C Cell
//
//  Created by Ishan Arora on 17/11/19.
//  Copyright © 2019 Ishan Arora. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            Bulletin()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("Bulletin")
                    }
                }
                .tag(0)
            Contacts()
                .tabItem {
                    VStack {
                        Image(systemName: "phone.fill")
                        Text("Contacts")
                    }
                }
                .tag(1)
            Schedule()
                .tabItem{
                    VStack{
                        Image(systemName: "envelope.fill")
                        Text("Schedule")
                    }
            }.tag(2)
            Settings()
                .tabItem{
                    VStack{
                        Image(systemName: "ellipsis.circle")
                        Text("More")
                    }
            }.tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
