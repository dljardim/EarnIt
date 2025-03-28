//
//  Counter.swift
//  EarnIt
//
//  Created by Damian Jardim on 3/25/25.
//

import SwiftUI

struct Counter: View {
    @State private var count = 0
    
    var body: some View {
        VStack{
            Text("Count: \(count)")
            Button{
                count += 1
            }label:{
                Text("Increase")
            }.buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    Counter()
}
