//
//  ContentView.swift
//  HelloCICD1
//
//  Created by Mahfuz on 2026-07-09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Performance Testing")
            
            PerformanceTesting()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
