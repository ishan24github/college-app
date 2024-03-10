//
//  new.swift
//  C Cell
//
//  Created by Ishan Arora on 17/11/19.
//  Copyright © 2019 Ishan Arora. All rights reserved.
//

import SwiftUI

struct new: View {
//    var isPresent = true
    var body: some View {
//         if isPresent {
            return VStack {
              Text("New")
                 .foregroundColor(.white)
                 .background(Color.red)
                 .font(.headline)
                 .offset(x: 5, y: -5)
            }
        }
//    }
}


struct new_Previews: PreviewProvider {
    static var previews: some View {
        new()
    }
}
