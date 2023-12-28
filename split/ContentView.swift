//
//  ContentView.swift
//  split
//
//  Created by Desmond Chi on 12/26/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        
        HStack {
            Text("Testing")
            Text("Testing #2")
        }
        .padding()
        .bold()
        .italic()
    }
}

#Preview {
    ContentView()
}
