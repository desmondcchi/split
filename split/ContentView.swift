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
                Color.black
                    .ignoresSafeArea()
                
                VStack {
                    Text("Split")
                        .font(.largeTitle)
                        .padding([.bottom], 200)
                        .foregroundColor(Color.white)

                    NavigationLink(destination: NewBillView()) {
                        Text("New Bill")
                    }
                    .padding([.bottom], 50)

                    NavigationLink(destination: PastBillsView()) {
                        Text("Past Bills")
                    }

                    Spacer()
                }
                .border(Color.red) // VStack
            }
        }
        .border(Color.red) // NavigationView
    }
}

#Preview {
    ContentView()
}
