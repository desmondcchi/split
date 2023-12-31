//
//  NewBillView.swift
//  split
//
//  Created by Desmond Chi on 12/27/23.
//

import SwiftUI
import AVFoundation

struct NewBillView: View {
    @Environment(\.dismiss) var dismiss: DismissAction
    
    var body: some View {
        Text("New Bill")
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.topBarLeading) {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "arrow.left.circle")
                            .font(.system(size: 20, weight: Font.Weight.bold))
                        
                    }
                }
                
                ToolbarItem(placement: ToolbarItemPlacement.topBarTrailing) {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "photo.circle")
                            .font(.system(size: 20, weight: Font.Weight.bold))
                    }
                }
                
                ToolbarItem(placement: ToolbarItemPlacement.topBarTrailing) {
                    NavigationLink(destination: BillItemsView()) {
                        Text("Manual Input")
                            .font(.system(size: 20, weight: Font.Weight.bold))
                    }
                }
            }
    }
}

#Preview {
    NewBillView()
}
