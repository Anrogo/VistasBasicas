//
//  ListsView.swift
//  VistasBasicas
//
//  Created by user190722 on 2/10/22.
//

import SwiftUI

struct ListsView: View {
    var sports = ["skate", "snow", "surf", "wake", "balance", "long"]
    var body: some View {
        VStack {
            List(sports, id: \.self) { sport in
                Image(sport)
                    .resizable()
                    .frame(width: 100, height: 100)
                Text(sport)
            }.padding()
        }
    }
}


struct ListsView_Previews: PreviewProvider {
    static var previews: some View {
        ListsView()
    }
}
