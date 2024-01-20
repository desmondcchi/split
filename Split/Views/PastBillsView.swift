//
//  PastBillsView.swift
//  Split
//
//  Created by Desmond Chi on 12/27/23.
//

import SwiftUI

struct PastBillsView: View {
    var body: some View {
        ScrollView {
            NavigationLink(destination: PastBillView(), label: {
                PastBillEntryView(restaurant_name: "Pasta Palace", total_price: 19.95, date: Date.now)
            })
            NavigationLink(destination: PastBillView(), label: {
                PastBillEntryView(restaurant_name: "Pasta Palace", total_price: 19.95, date: Date.now)
            })
            NavigationLink(destination: PastBillView(), label: {
                PastBillEntryView(restaurant_name: "Pasta Palace", total_price: 19.95, date: Date.now)
            })
        }
        .navigationTitle("Past Bills")
    }
}

#Preview {
    PastBillsView()
}
