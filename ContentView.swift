//
//  ContentView.swift
//  VistasBasicas
//
//  Created by user190722 on 2/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Image("image")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 500, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: 40))
            .shadow(radius: 20)
        /*
        Text("Hello, world! Soy Antonio que pasa contigo? ")
            .bold()
            .font(.largeTitle)
            .foregroundColor(Color.white)
            .background(Color.blue)
            .cornerRadius(20)
         */
        /*
        Button(action: {
            print("Ok!")
        }){
            Text("Pincha aquí")
            Image(systemName: "flame")
        }.padding().textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/).border(Color.blue, width: 2)
        */
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}
