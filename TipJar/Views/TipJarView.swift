//
//  TipJarView.swift
//  TipJar
//
//  Created by Angel Gutierrez on 19/03/23.
//

import SwiftUI
import RevenueCat

struct TipJarView: View {
    //MARK: Properties
        
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var subscriptionManager: IAPManager

    //MARK: Body
    var body: some View {
        VStack {
            Spacer()
            VStack {
                HStack {
                    Text("Tip Jar")
                        .font(.system(size: 24, weight: .heavy, design: .rounded))
                        .padding(.leading, 10)
                    Spacer()
                    Button(action: {
                        feedback.notificationOccurred(.success)
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .font(.title)
                            .foregroundColor(.red)
                            .padding(.trailing, 10)
                    } //: Dismiss sheet Button
                } //:HStack
                .padding(.top, 10)

                VStack(alignment: .leading) {
                    Text("If you love the app, you can leave a tip.\nAny tip at all helps a lot!")
                        .font(.system(size: 18, weight: .bold, design: .rounded))
                        .multilineTextAlignment(.center)
                } //:VStack
                .padding()

                ScrollView(showsIndicators: false) {
                    ForEach(subscriptionManager.packages, id: \.identifier) { product in
                        Button(action: {
                            subscriptionManager.purchase(product: product)
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            ZStack {
                                Rectangle()
                                    .fill(Color(.systemMint))
                                    .frame(height: 55)
                                    .cornerRadius(10)
                                IAPRow(product: product)
                            } //:ZStack
                        }
                    }
                    .padding(.vertical)
                } //:ScrollView
            } //:VStack
            .padding()
        } //:VStack
    }
}

struct IAPRow: View {
    //MARK: Properties

    var product: Package

    //MARK: Body
    var body: some View {
        HStack {
            Text(product.storeProduct.localizedDescription)
            Spacer()
            Text(product.localizedPriceString)
        } //:HStack
        .font(.system(size: 14, weight: .bold, design: .rounded))
        .foregroundColor(.white)
        .padding(20)
    }
}

struct TipJarView_Previews: PreviewProvider {
    static var previews: some View {
        TipJarView()
            .environmentObject(IAPManager())
    }
}
