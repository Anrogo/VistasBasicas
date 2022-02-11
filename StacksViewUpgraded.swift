//
//  StacksViewUpgraded.swift
//  VistasBasicas
//
//  Created by user190722 on 2/10/22.
//

import SwiftUI

struct StacksViewUpgraded: View {
    var sports = ["skate", "snow", "surf", "wake", "balance", "long"]
    var body: some View {
       
        ZStack {
            Color.green
            VStack (alignment: .leading){
                Text("Board Sports")
                    .font(.largeTitle)
                    .padding(.horizontal)
                Divider()
                ScrollView(.horizontal, showsIndicators: false){
                    HStack (alignment: .center, spacing: 40){
                        ForEach(sports, id: \.self) { sport in
                            VStack {
                                Text(sport)
                                ImageBoard(sport: sport)
                            }
                        }
                    }.padding(16)
                }
            }
        }
    }
}

struct StacksViewUpgraded_Previews: PreviewProvider {
    static var previews: some View {
            StacksView()
    }
}
