//
//  ProductListView.swift
//  EarnIt
//
//  Created by Damian Jardim on 3/25/25.
//

import SwiftUI

struct ProductListView: View {
    
    let products = [
        Product(name: "Laptop"),
        Product(name: "Smartphone"),
        Product(name: "Headphones")
    ]
    
    var body: some View{
        NavigationView{
            List(products){ product in
                Text(product.name)
                    .font(.headline)
            }
            .navigationTitle("Products")
        }
    }
}


#Preview {
    ProductListView()
}
