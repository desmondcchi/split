//
//  NewBillView.swift
//  Split
//
//  Created by Desmond Chi on 12/30/23.
//

import SwiftUI

struct NewBillView: View {
    @State private var show_add_food_item_popover: Bool = false
    @State private var show_add_person_popover: Bool = false
    @State private var food_items: [FoodItem] = []
    
    var body: some View {
        ZStack {
            VStack {
                // List of food items.
                ScrollView {
                    ForEach(food_items) { f in
                        Text("\(f.name) : \(String(f.price))")
                    }
                }
                
                HStack {
                    Button(action: {
                        show_add_food_item_popover.toggle()
                    }) {
                        Image(systemName: "plus.circle")
                            .foregroundColor(Color.green)
                            .font(Font.system(size: 40, weight: Font.Weight.bold, design: Font.Design.default))
                    }
                    .padding(Edge.Set.trailing, 100)
                    Button(action: {
                        show_add_person_popover.toggle()
                    }) {
                        Image(systemName: "person.badge.plus")
                            .foregroundColor(Color.blue)
                            .font(Font.system(size: 40, weight: Font.Weight.bold, design: Font.Design.default))
                    }
                }
            }
            .sheet(isPresented: $show_add_food_item_popover, content: {
                AddFoodItemPopoverView(food_item_list: $food_items)
                    .presentationDetents([PresentationDetent.medium])
            })
            .sheet(isPresented: $show_add_person_popover, content: {
                AddPersonPopoverView()
                    .presentationDetents([PresentationDetent.medium])
            })
        }
        .navigationTitle("New Bill")
    }
}

#Preview {
    NewBillView()
}
