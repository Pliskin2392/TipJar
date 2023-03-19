//
//  ContentView.swift
//  TipJar
//
//  Created by Angel Gutierrez on 19/03/23.
//

import SwiftUI

struct ContentView: View {
    //MARK: Properties
    
    @State private var showSheet = false
    
    //MARK: Body
    var body: some View {
        VStack {
            Button {
                showSheet.toggle()
            } label: {
                Text("Tip me 🤑")
                    .padding(10)
                    .foregroundColor(.green)
                    .font(.system(size: 32, weight: .heavy, design: .rounded))
                    .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 8))
                    .background(.green, in: RoundedRectangle(cornerRadius: 8))
            } //:Tipjar Button
        } //:VStack
        .sheet(isPresented: $showSheet, content: {
            TipJarView()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
