//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Nurbakyt on 29.03.2022.
//
//  This is the main program, i.e. the main entrypoint to the app.

import SwiftUI

@main
struct MemorizeApp: App {
    // initializing ModelView
    // the following is the class, so it's a reference type.
    // 'let game' is merely pointing to that heap memory
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
