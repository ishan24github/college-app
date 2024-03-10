//
//  sheetView.swift
//  C Cell
//
//  Created by Ishan Arora on 17/11/19.
//  Copyright © 2019 Ishan Arora. All rights reserved.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.presentationMode) var prentationMode: Binding<PresentationMode>
    var CompleteData : Result
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    self.prentationMode.wrappedValue.dismiss()
                }){
                    Text("Dismiss")
                }.padding()
            }
            Text(CompleteData.trackName)
                .font(.title)
                Text("some text some text some text some etxt c;ervdbf tectxve \(CompleteData.collectionName) some text some text sometext sometext")
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
            .padding()
            Spacer()

        }
    }
}

//struct SheetView_Previews: PreviewProvider {
//    static var previews: some View {
//        SheetView(CompleteData: Result(id: 1, title: "mj", text: "mmjnjn"))
//    }
//}
