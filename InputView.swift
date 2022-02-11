//
//  InputView.swift
//  VistasBasicas
//
//  Created by user190722 on 2/9/22.
//


import SwiftUI

struct InputView: View {
    @State var name = ""
    @State var surname = ""
    @State var ok = false
    @State var howMuch = 0.7
    
    var body: some View {
        Form {
            TextField("Nombre", text: $name)
            TextField("Apellidos", text: $surname)
            Toggle(isOn: $ok) {
                Text("¿Estás bien chaval?")
                
            }
            Section {
                Text("Selecciona tu nivel de felicidad actual")
                Slider(value: $howMuch)
                Text("\(Int(howMuch*100)) %")
                .frame(maxWidth: .infinity, alignment: .center)
            }
        }
    }
}


struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}
