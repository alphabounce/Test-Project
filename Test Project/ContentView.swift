//
//  ContentView.swift
//  Test Project
//
//  Created by Azib M. Javaid on 03/09/2025.
//

import SwiftUI
import SFSymbols7PublicPackage

struct ContentView: View {
    @State private var symbol = "globe"
    @State private var changeImage = false
    @State private var loader = SymbolLoader()
    var body: some View {
        VStack {
            Image(systemName: symbol)
                .imageScale(.large)
                .foregroundStyle(.tint)
                .onTapGesture {
                    changeImage.toggle()
                }
        }
        .padding()
        .sheet(
            isPresented: $changeImage) {
                SymbolView(
                    loader: loader,
                    selectedSymbol: $symbol
                )
            }
        
    }
}

#Preview {
    ContentView()
}
