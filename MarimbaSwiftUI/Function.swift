//
//  Function.swift
//  MarimbaSwiftUI
//
//  Created by Marco Alonso Rodriguez on 22/04/23.
//

import SwiftUI

struct Function: View {
    @State private var backgroundColor = Color.red
    @State private var text = "Do"
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(backgroundColor)
            .frame(width: 200, height: 200)
            .onTapGesture {
//                self.changeBackgroundColor()
                self.printText()
            }
    }
    
    func printText(){
        print(text)
    }
    
    func changeBackgroundColor() {
        backgroundColor = (backgroundColor == .red) ? .blue : .red
    }
}

struct Function_Previews: PreviewProvider {
    static var previews: some View {
        Function()
    }
}
