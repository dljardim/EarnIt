//
//  GesturesEx.swift
//  EarnIt
//
//  Created by Damian Jardim on 3/26/25.
//

import SwiftUI

struct GesturesEx: View {
    
    @State private var buttonColor:Color = .blue
    
    var body: some View {
        VStack{
            
            
            
            
            
            
            Spacer()
            Button{
                print("Spell cast!")
            }label:{
                Text("Button Text")
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .font(.title2)
                    .fontWeight(.medium)
            }
            .buttonStyle(.borderedProminent)
            .tint(buttonColor)
        }
        .padding()
    }
}

#Preview {
    GesturesEx()
}


/*
 
 1. tap
 2. long press
 3. drag
 4. swipe
 5. pinch
 
 
 a. on button tap - change background color and a inverse or readable font to match with that color
 
 */
