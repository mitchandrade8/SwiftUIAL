//
//  CustomCurvesBootcamp.swift
//  SwiftUIAL
//
//  Created by Mitch Andrade on 5/8/23.
//

import SwiftUI

struct CustomCurvesBootcamp: View {
    var body: some View {
        WaterShape()
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [Color.teal.opacity(0.5), Color.blue]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)
            )
            .ignoresSafeArea()
//            .stroke(lineWidth: 5)
//            .frame(width: 200, height: 200)
    }
}

struct CustomCurvesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        CustomCurvesBootcamp()
    }
}

struct ArcSample: Shape {
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.midY))
            path.addArc(
                center: CGPoint(x: rect.midX, y: rect.midY),
                radius: rect.height / 2,
                startAngle: Angle(degrees: 0),
                endAngle: Angle(degrees: 360),
                clockwise: false)
        }
    }
}

struct ShapeWithArc: Shape {
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            // top left
            path.move(to: CGPoint(x: rect.minX, y: rect.minY))
            
            // top right
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
            
            // mid right
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
            
            // bottom
            path.addArc(
                center: CGPoint(x: rect.midX, y: rect.midY),
                radius: rect.height / 2,
                startAngle: Angle(degrees: 0),
                endAngle: Angle(degrees: 180),
                clockwise: false)
            
            // mid left
            path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        }
    }
}

struct QuadSample: Shape {
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: .zero)
            path.addQuadCurve(
                to: CGPoint(x: rect.maxX, y: rect.maxY),
                control: CGPoint(x: rect.midX, y: rect.midY))
        }
    }
}

struct WaterShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.minX, y: rect.midY))
            
            path.addQuadCurve(
                to: CGPoint(x: rect.midX, y: rect.midY),
                control: CGPoint(x: rect.width * 0.25, y: rect.height * 0.40))
            
            path.addQuadCurve(
                to: CGPoint(x: rect.maxX, y: rect.midY),
                control: CGPoint(x: rect.width * 0.75, y: rect.height * 0.60))
            
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        }
    }
}
