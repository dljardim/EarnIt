import SwiftUI

struct DiceView: View {
    
    @State private var isRolling:Bool = false
    @State private var numberOfRolls = 0
    
    func rollDice(){
        numberOfRolls = 0
        isRolling = true
        
        // while loop will block the main thread - 
        while isRolling {
            numberOfRolls += 1
            let diceRoll:Int = Int.random(in: 1...6)
            print("You rolled a \(diceRoll)")
            
            if(diceRoll == 6){
                print("Hurray!")
                isRolling = false
            }
        }
    }
    
    var body: some View{
        VStack{
            Spacer()
            
            Text("Total Rolls: \(numberOfRolls)")
                .font(.title)
                .fontWeight(.medium)
            
            Spacer()
            
            Button{
                rollDice()
            }label:{
                Text("Start Rolling")
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .font(.title2)
                    .fontWeight(.medium)
            }
            .buttonStyle(.borderedProminent)
            .tint(.blue)
        }.padding()
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView()
    }
}
