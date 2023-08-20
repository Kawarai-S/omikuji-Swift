//
//  OmikujiModifier.swift
//  omikuji0820
//
//  Created by 瓦井つばさ on 2023/08/20.
//

import SwiftUI

struct ButtonModifier: ViewModifier{
    let backgroundColor: Color
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, minHeight: 50)
            .background(backgroundColor)
            .foregroundColor(.white)
    }
}

extension View {
    func buttonModifier(color:Color) -> some View {
        modifier(ButtonModifier(backgroundColor: color))
    }
}
