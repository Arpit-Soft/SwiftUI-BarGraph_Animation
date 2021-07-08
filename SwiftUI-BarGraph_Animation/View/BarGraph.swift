//
//  BarGraph.swift
//  SwiftUI-BarGraph_Animation
//
//  Created by Arpit Dixit on 08/07/21.
//

import SwiftUI

struct BarGraph: View {
    
    let reports: [Report]
    
    var body: some View {
        VStack {
            HStack(alignment: .lastTextBaseline, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                ForEach(reports, id: \.year) { report in
                    BarView(report: report)
                }
            })
        }
    }
}

struct BarGraph_Previews: PreviewProvider {
    static var previews: some View {
        BarGraph(reports: Report.all())
    }
}

struct BarView: View {
    
    let report: Report
    @State private var showGraph: Bool = false
    
    var body: some View {
        
        let value = report.revenue / 500
        let yValue = Swift.min(value * 20, 500)
        
        return VStack {
            
            Text(String(format: "$%.2f", report.revenue))
                .foregroundColor(.secondary)
            
            Rectangle()
                .fill(report.color)
                .frame(width: 100, height: showGraph ? CGFloat(yValue) : 0.0, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
                .onAppear(perform: {
                    withAnimation(.spring()) {
                        showGraph = true
                    }
                })
            Text(report.year)
                .font(.title)
        }
    }
}
