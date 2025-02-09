//
//  ContentView.swift
//  Ultimatrix Watch App
//
//  Created by Swantan Barua on 08/02/25.
//

import SwiftUI

struct RightFacingTriangle: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width = geometry.size.width
                let height = geometry.size.height

                // Start at top-left corner
                path.move(to: CGPoint(x: 0, y: 0))
                // Move to bottom-left corner
                path.addLine(to: CGPoint(x: 0, y: height))
                // Move to the right edge (midpoint)
                path.addLine(to: CGPoint(x: width, y: height / 2))
                // Close the path
                path.closeSubpath()
            }
            .fill(Color.black) // Fill the triangle with black color
        }
        .aspectRatio(1, contentMode: .fit) // Keep it proportional
    }
}

struct LeftFacingTriangle: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width = geometry.size.width
                let height = geometry.size.height

                // Start at top-right corner
                path.move(to: CGPoint(x: width, y: 0))
                // Move to bottom-right corner
                path.addLine(to: CGPoint(x: width, y: height))
                // Move to the left edge (midpoint)
                path.addLine(to: CGPoint(x: 0, y: height / 2))
                // Close the path
                path.closeSubpath()
            }
            .fill(Color.black) // Fill the triangle with black color
        }
        .aspectRatio(1, contentMode: .fit) // Keep it proportional
    }
}

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
            
            HStack {
                RightFacingTriangle()
                    .frame(width: 70)
                    .clipShape(Circle())
                
                LeftFacingTriangle()
                    .frame(width: 70)
                    .clipShape(Circle())
            }
        }
    }
}

#Preview {
    ContentView()
}
