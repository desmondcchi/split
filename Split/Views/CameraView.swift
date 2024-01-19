//
//  CameraView.swift
//  Split
//
//  Created by Desmond Chi on 12/27/23.
//

import SwiftUI
import AVFoundation

struct CameraView: View {
    @Environment(\.dismiss) var dismiss: DismissAction
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            // Shaded rectangle for header.
            Rectangle()
                .foregroundColor(Color.black)
                .opacity(0.3)
                .offset(y: -435)
                .frame(height: 200)
        }
            // Configuring custom toolbar.
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.topBarLeading) {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "arrow.left.circle")
                            .font(.system(size: 20, weight: Font.Weight.bold))
                            .foregroundColor(Color.white)
                    }
                }
                
                ToolbarItem(placement: ToolbarItemPlacement.topBarTrailing) {
                    Button(action: {
                        // TODO: Choose image of receipt from photo gallery.
                    }) {
                        Image(systemName: "photo.circle")
                            .font(.system(size: 20, weight: Font.Weight.bold))
                            .foregroundColor(Color.white)
                    }
                }
                
                ToolbarItem(placement: ToolbarItemPlacement.topBarTrailing) {
                    NavigationLink(destination: NewBillView()) {
                        Text("Manual Input")
                            .font(.system(size: 20, weight: Font.Weight.bold))
                            .foregroundColor(Color.white)
                    }
                }
            }
    }
}

#Preview {
    CameraView()
}
