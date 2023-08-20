//
//  ContentView.swift
//  omikuji0820
//
//  Created by 瓦井つばさ on 2023/08/20.
//

import SwiftUI

struct ContentView: View {
    @State var imageName = "omikuji"
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack{
                Button("リセット"){
                    imageName = "omikuji"
                }
                .buttonModifier(color: .red)
                Button("おみくじを引く"){
                    updateOmikujiImageView()
                }
                .buttonModifier(color: .green)
            }
        }
        .padding()
    }
    func updateOmikujiImageView() {
        let luckNumber = Int.random(in: 0...2)
        if luckNumber == 0 {
            imageName = "daikichi"
        } else if luckNumber == 1 {
            imageName = "kichi"
        } else {
            imageName = "kyou"
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


