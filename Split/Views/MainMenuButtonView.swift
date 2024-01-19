//
//  MainMenuButtonView.swift
//  Split
//
//  Created by Desmond Chi on 12/30/23.
//

import SwiftUI

struct MainMenuButtonView: View {
    let text: String
    let text_color: Color
    let background_color: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 100, height: 40)
                .foregroundColor(background_color)
            
            Text(text)
                .foregroundColor(text_color)
                .fontWeight(Font.Weight/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(Font.system(size: 20))
        }
    }
}

#Preview {
    MainMenuButtonView(text: "Test", text_color: Color.white, background_color: Color.green)
}
