//
//  ContentView.swift
//  MarimbaSwiftUI
//
//  Created by Marco Alonso Rodriguez on 22/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("mesa")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            HStack(spacing: 20.0) {
                BotonView(nota: "do", backgroundColor: .blue, paddingSize: 0)
                
                BotonView(nota: "re", backgroundColor: .yellow, paddingSize: 10)
                
                BotonView(nota: "mi", backgroundColor: .orange, paddingSize: 20)
                
                BotonView(nota: "fa", backgroundColor: .pink, paddingSize: 30)
                
                BotonView(nota: "so", backgroundColor: .purple,
                          paddingSize: 40)
                
                BotonView(nota: "la", backgroundColor: .brown,
                          paddingSize: 50)
                
                BotonView(nota: "si", backgroundColor: .gray,
                          paddingSize: 60)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
