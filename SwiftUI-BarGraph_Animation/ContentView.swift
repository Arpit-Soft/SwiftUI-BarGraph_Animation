//
//  ContentView.swift
//  SwiftUI-BarGraph_Animation
//
//  Created by Arpit Dixit on 08/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        BarGraph(reports: Report.all())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
