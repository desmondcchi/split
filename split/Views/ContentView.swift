//
//  ContentView.swift
//  split
//
//  Created by Desmond Chi on 12/26/23.
//

import SwiftUI

struct ContentView: View {
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
                    Text("Split")
                        .font(.system(size: 50, weight: .bold))
                        .padding(.bottom, 200)
                        .padding(.top, 20)
                        .foregroundColor(Color.white)

                    NavigationLink(destination: NewBillView()) {
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
    ContentView()
}
