//
//  ColorsEx.swift
//  EarnIt
//
//  Created by Damian Jardim on 3/26/25.
//

import SwiftUI

struct ColorsEx: View {
    
    @State private var customColor:Color = Color(
        red:1.1,
        green:0.5,
        blue:0.8,
        opacity: 0.0
    )
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .foregroundStyle(customColor)
    }
}

#Preview {
    ColorsEx()
}
