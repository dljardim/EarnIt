//
//  ShapesEx.swift
//  EarnIt
//
//  Created by Damian Jardim on 3/27/25.
//

import SwiftUI

struct ShapesEx: View {
    var body: some View {
        Rectangle()
            .frame(width: 100, height: 100, alignment: .center)
            .foregroundStyle(.blue)
        
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(.red)
        
        
    }
}

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path
    }
}

#Preview {
    ShapesEx()
}
