//
//  RandomEx.swift
//  EarnIt
//
//  Created by Damian Jardim on 3/26/25.
//

import SwiftUI

struct RandomEx: View {
    
    @State private var randomNumber:Int = 0
    @State private var randomDouble:Double = 0.0
    @State private var randomColor:Color = .blue
    
    func setRandomNumber(){
        randomNumber = Int.random(in: 1...10)
    }
    
    func setRandomDouble(){
        randomDouble = Double.random(in: 0.0 ... 1.0)
    }
    
    func setRandomColor(){
        randomColor = Color(red: Double.random(in: 0.0...1.0), green: Double.random(in:0.0...1.0), blue:Double.random(in:0.0...1.0), opacity: 1.0)
    }
    
    func test1(){
        let randomNumber = Int.random(in: 5...15)
        if (randomNumber == 10) {
            print("You got a perfect 10!")
        }
    }

    
    var body: some View {
        
        VStack(){
            Text("Random Int: \(randomNumber)")
            Text("Random Double: \(randomDouble, specifier: "%.2f")")

            
            Button{
                setRandomNumber()
                setRandomDouble()
                setRandomColor()
            }label:{
                Text("Generate Color")
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .fontWeight(.medium)
                    .font(.title3)
                
            }
            .buttonStyle(.borderedProminent).tint(randomColor)
            
            Spacer()
            
            

            
        }.padding()
    }
}

#Preview {
    RandomEx()
}
