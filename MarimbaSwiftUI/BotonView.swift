//
//  BotonView.swift
//  MarimbaSwiftUI
//
//  Created by Marco Alonso Rodriguez on 22/04/23.
//

import SwiftUI
import AVFoundation

struct BotonView: View {
    
    @State var nota: String = ""
    @State private var count = 0
    
    var backgroundColor: Color
    var paddingSize: CGFloat
    
    @State var reproductor: AVAudioPlayer?
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .fill(backgroundColor)
                .cornerRadius(12)
            
            VStack {
                Circle()
                    .stroke(Color.black, lineWidth: 4)
                    .frame(maxWidth: 40)
                
                Spacer()
                
                Circle()
                    .stroke(Color.black, lineWidth: 4)
                    .frame(maxWidth: 40)
            }.padding(10)
            
            Text(nota)
                .font(.system(size: 12))
        }
        .onTapGesture {
            playSound(nota: nota)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.top, paddingSize)
        .padding(.bottom, paddingSize)
        .shadow(radius: 4)
    }
}

struct BotonView_Previews: PreviewProvider {
    static var previews: some View {
        BotonView(backgroundColor: .red, paddingSize: 10)
            .previewLayout(.sizeThatFits)
    }
}
