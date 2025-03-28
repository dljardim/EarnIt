//
//  ChoreListView.swift
//  EarnIt
//
//  Created by Damian Jardim on 3/25/25.
//

import SwiftUI

struct ChoreListView: View {
    
    struct Chore: Identifiable{
        let id = UUID()
        var name: String
        var pointValue:Int
        var done: Bool
    }
    
    let chores = [
        Chore(name: "Take out the trash", pointValue: 3, done: false),
        Chore(name: "Take out the Dishes", pointValue: 6, done: false),
        Chore(name: "Mow the Lawn", pointValue: 30, done: false),
        Chore(name: "Vacuum the house", pointValue: 30, done: false)
    ]
    
    var body: some View {
        NavigationView{
            List(chores){ chore in
//                NavigationLink
                Text("\(chore.name)")
            }.navigationTitle("Chores")
            Text("Choose a Chore")
        }
        
    }
}

#Preview {
    ChoreListView()
}
