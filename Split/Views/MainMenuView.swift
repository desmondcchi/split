//
//  ContentView.swift
//  Split
//
//  Created by Desmond Chi on 12/26/23.
//

import SwiftUI

struct MainMenuView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.white
                    .ignoresSafeArea()
                
                Rectangle()
                    .foregroundColor(Color.green)
                    .frame(height: 300)
                    .offset(y: -400)
                
                VStack {
                    Text("$plit")
                        .font(.system(size: 70, weight: Font.Weight.bold))
                        .padding(Edge.Set.bottom, 200)
                        .padding(Edge.Set.top, 20)
                        .foregroundColor(Color.white)

                    NavigationLink(destination: CameraView()) {
                        MainMenuButtonView(text: "New Bill", text_color: Color.white, background_color: Color.green)
                    }
                    .padding(.bottom, 50)

                    NavigationLink(destination: PastBillsView()) {
                        MainMenuButtonView(text: "Past Bills", text_color: Color.white, background_color: Color.blue)
                    }

                    Spacer()
                }
            }
        }
    }
}

#Preview {
    MainMenuView()
}
