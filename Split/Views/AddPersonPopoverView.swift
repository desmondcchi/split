//
//  AddPersonPopoverView.swift
//  Split
//
//  Created by Desmond Chi on 1/19/24.
//

import SwiftUI

struct AddPersonPopoverView: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea(SafeAreaRegions.all)
            
            Text("Add Person")
        }
    }
}

#Preview {
    AddPersonPopoverView()
}
