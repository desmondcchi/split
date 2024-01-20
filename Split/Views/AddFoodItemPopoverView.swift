//
//  AddFoodItemPopoverView.swift
//  Split
//
//  Created by Desmond Chi on 1/19/24.
//

import SwiftUI

struct AddFoodItemPopoverView: View {
    @State private var food_item_name: String = ""
    @State private var price: String = ""
    @Binding var food_item_list: [FoodItem]
//    @State private var people: [Person] = []
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        
        ZStack {
            Color.green
                .ignoresSafeArea(SafeAreaRegions.all)
            
           
            
            VStack(alignment: .leading) {
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color.red)
                            .font(Font.system(size: 30, weight: Font.Weight.bold))
                            .padding(Edge.Set.leading, 30)
                            .padding(Edge.Set.top, 25)
                    })
                    Spacer()
                }
                Spacer()
            }
            
            VStack {
                Text("Add Food Item")
                    .font(Font.system(size: 30, weight: Font.Weight.bold, design: Font.Design.default))
                    .foregroundColor(Color.white)
                    .padding(Edge.Set.top, 20)
                    .padding(Edge.Set.bottom, 50)
                TextField("Food Item", text: $food_item_name)
                    .padding()
                    .frame(width: 300)
                    .background(Color.white.cornerRadius(10.0))
                TextField("Price", text: $price)
                    .keyboardType(.decimalPad)
                    .padding()
                    .frame(width: 125)
                    .background(Color.white.cornerRadius(10.0))
                    .padding([Edge.Set.top], 20)
                    .multilineTextAlignment(TextAlignment.center)
                Button(action: {
                    // TODO: Store food_item_name, price.
                    food_item_list.append(FoodItem(name: food_item_name, price: Double(price)!))
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 80, height: 40)
                            .foregroundColor(Color.blue)
                        
                        Text("Done")
                            .foregroundColor(Color.white)
                            .fontWeight(Font.Weight/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(Font.system(size: 20))
                    }
                })
                .padding([Edge.Set.top], 20)
                Spacer()
            }
        }
    }
}

#Preview {
    AddFoodItemPopoverView(food_item_list: .constant([FoodItem]()))
}
