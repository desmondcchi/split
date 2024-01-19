//
//  PastBillEntryView.swift
//  Split
//
//  Created by Desmond Chi on 1/18/24.
//

import SwiftUI

struct PastBillEntryView: View {
    let restaurant_name: String
    let total_price: Double
    let date: Date
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 75)
                .foregroundColor(Color.green)
            VStack {
                HStack {
                    Text("\(restaurant_name)")
                        .foregroundColor(Color.white)
                        .bold()
                        .padding(Edge.Set.leading, 10)
                    Spacer()
                    Text("$\(String(total_price))")
                        .foregroundColor(Color.white)
                        .padding(Edge.Set.trailing, 10)
                }
                HStack {
                    Text("\(date.formatted())")
                        .foregroundColor(Color.white)
                        .padding(Edge.Set.leading, 10)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    PastBillEntryView(restaurant_name: "Restaurant", total_price: 9.99, date: Date.now)
}
