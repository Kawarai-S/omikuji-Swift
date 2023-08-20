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
                .buttonModifier(color: .red)
                Button("おみくじを引く"){
                    
                }
                .buttonModifier(color: .green)
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


