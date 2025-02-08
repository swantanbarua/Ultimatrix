//
//  ContentView.swift
//  Ultimatrix Watch App
//
//  Created by Swantan Barua on 08/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Circle()
                .stroke(
                    .gray,
                    lineWidth: 20
                )
            
            Circle()
                .fill(.green)
                .stroke(
                    .black,
                    lineWidth: 10
                )
            
            Circle()
                .fill(.black)
                .stroke(
                    .green,
                    lineWidth: 1
                )
        }
    }
}

#Preview {
    ContentView()
}
