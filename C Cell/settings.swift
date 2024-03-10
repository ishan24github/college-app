//
//  settings.swift
//  C Cell
//
//  Created by Ishan Arora on 17/11/19.
//  Copyright © 2019 Ishan Arora. All rights reserved.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        NavigationView{
            Form{
                Section{
                    NavigationLink(destination: website(items: testWeb)){
                        Text("Important Links")
                    }
                }
                Section{
                    NavigationLink(destination: FAQsList(items: testFAQs)){
                        Text("FAQs")
                    }
                    NavigationLink(destination: Text("C-cell")){
                        Text("About")
                    }
                }
            }.navigationBarTitle(Text("More"))
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}


