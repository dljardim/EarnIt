//
//  Chore.swift
//  EarnIt
//
//  Created by Damian Jardim on 3/25/25.
//

import Foundation

struct Chore: Identifiable{
    let id = UUID()
    var name: String
    var pointValue:Int
    var done: Bool
}
/*

moving forward can you change your teach style. I like that you are breaking down the functionality into smaller parts.  Can you alter your lessons and examples to not be the same functionality that the app contains.nn


Step 4: Displaying Chores in a List

Now that we have our Chore model, let’s learn how to display a list of chores in SwiftUI.
🧠 Concept: SwiftUI Lists
In SwiftUI, we use List to display multiple items. It automatically handles scrolling and layouts.

Using a List -
A list presents rows of data arranged in a single column, optionally providing the ability to select one or more members.

struct Product: Identifiable {
    let name: String
    let id = UUID()
}

Create 3 products.  (critique my work)

Create a view that displays the 3 products in a list (critique my work)


(if i ask for a hint) -> use a foreach loop within list with a vstack (critique my work)

Now, create a view that displays 3 Chores.  (critique my work)


-----------

then do the same for navigationview

                        present the concept, questions, and exercises outside of the chore app.  once i have the concept ask me to do perform that action with the Chores App
                        
                        (critique my work)
                        
-----------
                       

                        

Example: Displaying Chores in a List
Let’s create a view that shows a list of chores.
import SwiftUI

struct ChoreListView: View {
    @State private var chores = [
        Chore(name: "Wash Dishes", pointValue: 10, done: false),
        Chore(name: "Take out Trash", pointValue: 5, done: false),
        Chore(name: "Vacuum", pointValue: 8, done: false)
    ]
    
    var body: some View {
        NavigationView {
            List(chores) { chore in
                HStack {
                    Text(chore.name)
                        .font(.headline)
                    Spacer()
                    Text("\(chore.pointValue) pts")
                        .foregroundColor(.gray)
                }
            }
            .navigationTitle("Chores")
        }
    }
}
🛠 Your Task
Create a new file called ChoreListView.swift.
Copy the ChoreListView code and modify it if needed.
                                                Replace ContentView.swift to show ChoreListView instead.
                                                Run the app and tell me what you see! 🚀
*/
