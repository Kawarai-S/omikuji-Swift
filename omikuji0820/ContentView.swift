//
//  ContentView.swift
//  omikuji0820
//
//  Created by 瓦井つばさ on 2023/08/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("omikuji")
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack{
                Button("リセット"){
                    
                }
                .modifier(ButtonModifier(backgroundColor: .red))
                
                Button("おみくじを引く"){
                    
                }
                .modifier(ButtonModifier(backgroundColor: .green))
                
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ButtonModifier: ViewModifier{
    let backgroundColor: Color
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, minHeight: 50)
            .background(backgroundColor)
            .foregroundColor(.white)
    }
}
