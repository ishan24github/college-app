//
//  Schedule.swift
//  C Cell
//
//  Created by Ishan Arora on 17/11/19.
//  Copyright © 2019 Ishan Arora. All rights reserved.
//

import SwiftUI

struct Schedule: View {
    var body: some View {
        NavigationView{
            List{
                Section{
                    NavigationLink(destination: calendar()){
                        Text("Holiday Calendar")
                    }
                }
                Section{
                    NavigationLink(destination: BusSchedule()){
                        Text("Bus Time Table")
                    }
                }
                Section{
                    NavigationLink(destination:MessMenu()){
                        Text("Mess Menu")
                    }
                }
                Section{
                    NavigationLink(destination: Curriculum()){
                        Text("Curriculum")
                    }
                }
            }.navigationBarTitle(Text("Schedule"))
        }
    }
}

struct Schedule_Previews: PreviewProvider {
    static var previews: some View {
        Schedule()
    }
}

struct calendar : View{
    var body : some View{
        Image(systemName: "calendar")
        .resizable()
        .frame(width: 300, height: 300)
    }
}

struct BusSchedule: View {
    var body: some View{
        Image(systemName: "list.bullet")
        .resizable()
        .frame(width: 300, height: 300)
    }
}

struct MessMenu : View {
    var body: some View{
        Image(systemName: "list.bullet")
        .resizable()
        .frame(width: 300, height: 300)
    }
}

struct Curriculum : View {
    var body: some View{
        Image(systemName: "list.bullet")
        .resizable()
        .frame(width: 300, height: 300)
    }
}
