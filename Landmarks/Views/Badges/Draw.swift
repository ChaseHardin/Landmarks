//
//  Draw.swift
//  Landmarks
//
//  Created by Chase Hardin on 11/13/21.
//

import SwiftUI

struct Draw: View {
    var body: some View {
        Path {path in
            path.move(to: CGPoint(x: 20, y: 0))
            path.addLine(to: CGPoint(x: 20, y: 200))
            path.addLine(to: CGPoint(x: 220, y: 200))
            path.addLine(to: CGPoint(x: 220, y: 0))
        }.fill(LinearGradient(
                gradient: Gradient(colors: [Color.green, Color.blue]),
            startPoint: .init(x: 0.5, y: 0),
            endPoint: .init(x: 0.5, y: 0.5)
        ))
    }
}

struct Draw_Previews: PreviewProvider {
    static var previews: some View {
        Draw()
    }
}
