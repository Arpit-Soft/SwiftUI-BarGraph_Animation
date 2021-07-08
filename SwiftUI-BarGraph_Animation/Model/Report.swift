//
//  Report.swift
//  SwiftUI-BarGraph_Animation
//
//  Created by Arpit Dixit on 08/07/21.
//

import Foundation
import SwiftUI

struct Report {
    
    let year: String
    let revenue: Double
    let color: Color
}

extension Report {
    
    static func all() -> [Report] {
        return [
            Report(year: "2001", revenue: 2500, color: .blue),
            Report(year: "2002", revenue: 4500, color: .orange),
            Report(year: "2003", revenue: 6500, color: .green)
        ]
    }
}
