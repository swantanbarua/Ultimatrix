//
//  ContentView.swift
//  Ultimatrix Watch App
//
//  Created by Swantan Barua on 08/02/25.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Circle()
                .stroke(
                    .gray,
                    lineWidth: 30
                )
            
            Circle()
                .fill(.green)
                .stroke(
                    .black,
                    lineWidth: 20
                )
            
            Circle()
                .fill(.black)
                .stroke(
                    .green,
                    lineWidth: 10
                )
            
            Circle()
                .fill(.green)
                .stroke(
                    .black,
                    lineWidth: 5
                )
        }
    }
}

#Preview {
    ContentView()
}
