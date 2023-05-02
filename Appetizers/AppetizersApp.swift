//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Jasman Arora on 4/27/23.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
