//
//  FoodItem.swift
//  Split
//
//  Created by Desmond Chi on 1/19/24.
//

import Foundation

struct FoodItem: Identifiable {
    let id = UUID()
    
    let name: String
    let price: Double
//    let people: [Person]
}
