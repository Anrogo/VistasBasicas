//
//  StacksView.swift
//  VistasBasicas
//
//  Created by user190722 on 2/9/22.
//

import SwiftUI

struct StacksView: View {
    var body: some View {
       
        ZStack {
            Color.green
            VStack (alignment: .leading){
                Text("Board Sports")
                    .font(.largeTitle)
                    .padding()
                Divider()
                ScrollView(.vertical, showsIndicators: false){
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack (alignment: .center, spacing: 24){
                            VStack{
                                Text("Skate")
                                ImageBoard(sport: "skate")
                            }
                            VStack{
                                Text("Snow")
                                ImageBoard(sport: "snow")
                            }

                            VStack{
                                Text("Surf")
                                ImageBoard(sport: "surf")
                            }
                            VStack{
                                Text("Balance")
                                ImageBoard(sport: "balance")
                            }
                            VStack{
                                Text("Wake")
                                ImageBoard(sport: "wake")
                            }
                            VStack{
                                Text("Long")
                                ImageBoard(sport: "long")
                            }
                        }.padding(16)
                        HStack (alignment: .center, spacing: 24){
                            
                        }.padding(16)
                    }
                }
            }
        }
    }
}

struct ImageBoard: View {
    @State var expanded = true
    var sport = "surf"
    var body: some View {
        Image(sport)
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: expanded ? 370 : 100)
            .clipShape(Capsule())
            .shadow(radius: 20)
            .rotation3DEffect(
                .degrees(expanded ? 0 : 360),
                axis: (x: 0.0, y: 1.0, z: 0.0),
                anchor: .center,
                anchorZ: 0.0,
                perspective: 1.0
            )
            .onTapGesture {
                self.expanded.toggle()
            }.animation(.spring(dampingFraction: 0.5))
    }
}

struct StacksView_Previews: PreviewProvider {
    static var previews: some View {
        StacksView()
    }
}
