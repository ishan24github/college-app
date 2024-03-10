//
//  BulletinItem.swift
//  C Cell
//
//  Created by Ishan Arora on 17/11/19.
//  Copyright © 2019 Ishan Arora. All rights reserved.
//

import SwiftUI

//
struct BulletinItem: View {
    var results : Result
    var body: some View {
        VStack {
                Text(results.trackName)
                .font(.title)
                Text("some text some text some text some etxt c;ervdbf tectxve \(results.collectionName)")
                .multilineTextAlignment(.leading)
                .lineLimit(2)
        }
    }
}
//
//
//
////struct BulletinItem_Previews: PreviewProvider {
////    static var previews: some View {
//        BulletinItem()
//    }
//}
