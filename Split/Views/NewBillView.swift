//
//  NewBillView.swift
//  Split
//
//  Created by Desmond Chi on 12/30/23.
//

import SwiftUI

func addItem() {
    
}

struct NewBillView: View {
    var body: some View {
        ZStack {
            VStack {
            }
        }
        .navigationTitle("New Bill")
        .toolbar {
            Button(action: addItem) {
                Image(systemName: "plus.circle")
                    .fontWeight(Font.Weight.bold)
            }
        }
    }
}

#Preview {
    NewBillView()
}
