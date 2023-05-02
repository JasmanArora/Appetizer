//
//  OrderView.swift
//  Appetizers
//
//  Created by Jasman Arora on 4/27/23.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                   
                    Button {
                        print("Order Placed")
                    } label: {
                        //APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }.modifier(StandardButtonStyle())
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order.\n Please add an appetizer!")
                }
            }
                .navigationTitle("🧾 Orders")
        }
    
    }
    

}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
