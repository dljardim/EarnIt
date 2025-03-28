//
//  DiceView.swift
//  EarnIt
//
//  Created by Damian Jardim on 3/26/25.
//


/*
 
 1️⃣ Lets the user "roll" the dice multiple times using a loop.
 2️⃣ Stops rolling when they get a 6 (like rolling a perfect score in a game!).
 3️⃣ Prints how many times they had to roll before getting a 6.
 💭 Bonus: Can you make it more fun by adding an interactive element? (e.g., pressing a button in SwiftUI to roll)
 
 */


import SwiftUI

struct DiceView: View {
    @State private var rollResult:Int = 0
    @State private var shouldRoll:Bool = true
    @State private var rollHistory:[Di] = []
    
   
    func roll(){
        
    }

    var body: some View {
        VStack{
            
            Spacer()
//            List(rollHistory){ di in
//                Text(di)
//            }
            
            /* full width button */
            Button{
                
            }label:{
                Text("Roll Dice")
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .fontWeight(.medium)
                    .font(.headline)
            }
            .buttonStyle(.borderedProminent)
        }.padding()
        
    }
}




struct Di: View {
    @State private var value:Int = Int.random(in: 1...6)

    @State private var colorBackground:Color = Color(
        red:Double.random(in: 0.0...1.0),
        green:Double.random(in: 0.0...1.0),
        blue:Double.random(in: 0.0...1.0),
        opacity:Double.random(in: 0.0...1.0)
    )
    
    @State private var colorForeground:Color = Color(
        red:Double.random(in: 0.0...1.0),
        green:Double.random(in: 0.0...1.0),
        blue:Double.random(in: 0.0...1.0),
        opacity:Double.random(in: 0.0...1.0)
    )
    
    var body: some View {
        
        Button{
            colorBackground = Color(
                red:Double.random(in: 0.0...1.0),
                green:Double.random(in: 0.0...1.0),
                blue:Double.random(in: 0.0...1.0),
                opacity:Double.random(in: 0.0...0.5))
                
            colorForeground = Color(
                red:Double.random(in: 0.0...1.0),
                green:Double.random(in: 0.0...1.0),
                blue:Double.random(in: 0.0...1.0),
                opacity:Double.random(in: 0.6...1.0))
        }label:{
            Text("\(value)")
                .font(.custom("AmericanTypewriter", size: 64, relativeTo: .largeTitle))
                .frame(width: 140.0, height: 140.0, alignment: .center)
                .scaledToFit()
                .background(colorBackground)
                .foregroundStyle(colorForeground)
                .font(.headline).fontWeight(.bold)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(colorForeground, lineWidth: 4)
                }
                .shadow(color: .gray.opacity(0.5), radius: 3, x: 2, y: 2)

        }
    }
}

#Preview {
    DiceView().preferredColorScheme(.dark)
}

