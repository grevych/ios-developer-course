//
//  ContentView.swift
//  Course App
//
//  Created by Gerardo Reyes on 27.04.2024.
//
import os
import SwiftUI

struct ContentView: View {
    let defaultCfg = Configuration.default
    private let logger = Logger()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            logger.info("Jokes base URL \(defaultCfg.jokesBaseURL)")
        }
    }
}

#Preview {
    ContentView()
}
