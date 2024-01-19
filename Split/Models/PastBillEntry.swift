//
//  PastBillEntry.swift
//  Split
//
//  Created by Desmond Chi on 1/18/24.
//

import Foundation

struct PastBillEntry {
    var name: String
    var total: Double
    var subtotal: Double
    var tax: Double
    var tip: Double
    var date: Date
    var bill_items: [BillItem]
}
