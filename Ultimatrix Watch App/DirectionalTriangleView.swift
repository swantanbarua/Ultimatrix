//
//  DirectionalTriangleView.swift
//  Ultimatrix Watch App
//
//  Created by Swantan Barua on 09/02/25.
//

import SwiftUI

struct DirectionalTriangleView: View {
    
    // MARK: - PROPERTIES
    enum Direction {
        case left
        case right
    }

    var direction: Direction

    // MARK: - BODY
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width = geometry.size.width
                let height = geometry.size.height

                switch direction {
                case .right:
                    // Right-facing triangle
                    path.move(to: CGPoint(x: 0, y: 0)) // Top-left corner
                    path.addLine(to: CGPoint(x: 0, y: height)) // Bottom-left corner
                    path.addLine(to: CGPoint(x: width, y: height / 2)) // Center-right
                case .left:
                    // Left-facing triangle
                    path.move(to: CGPoint(x: width, y: 0)) // Top-right corner
                    path.addLine(to: CGPoint(x: width, y: height)) // Bottom-right corner
                    path.addLine(to: CGPoint(x: 0, y: height / 2)) // Center-left
                }
                path.closeSubpath()
            }
            .fill(Color.black) // Fill the triangle with black color
        }
        .aspectRatio(1, contentMode: .fit) // Maintain 1:1 aspect ratio
    }
}

// MARK: - PREVIEW
#Preview {
    DirectionalTriangleView(direction: .right)
}
