//
//  IAPManager.swift
//  TipJar
//
//  Created by Angel Gutierrez on 19/03/23.
//  Source: https://betterprogramming.pub/adding-a-tip-jar-with-revenuecat-in-swiftui-717a0d4b60c

import SwiftUI
import RevenueCat

class IAPManager: ObservableObject {
    static let shared = IAPManager()

    @Published var packages: [Package] = []
    @Published var inPaymentProgress = false

    init() {
        Purchases.shared.getOfferings { (offerings, _) in
            if let packages = offerings?.current?.availablePackages {
                self.packages = packages
            }
        }
    }

    func purchase(product: Package) {
        guard !inPaymentProgress else { return }
        inPaymentProgress = true
        Purchases.shared.purchase(package: product) { (_, purchaserInfo, _, _) in
            self.inPaymentProgress = false
        }
    }
}
