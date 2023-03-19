//
//  TipJarApp.swift
//  TipJar
//
//  Created by Angel Gutierrez on 19/03/23.
//

import SwiftUI
import RevenueCat

@main
struct TipJarApp: App {
    //MARK: Properties
    
    @StateObject var subscriptionManager = IAPManager()
    
    //MARK: Body
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(subscriptionManager)
        }
    }
    init() {
        Purchases.logLevel = .debug
        Purchases.configure(withAPIKey: "PublicKeyFromRevenueCat") //Public key from RevenueCat project
    }
}
