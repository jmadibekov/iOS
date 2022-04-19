//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Nurbakyt on 19.04.2022.
//
//  This is the ModelView!

import SwiftUI

class EmojiMemoryGame {
    static let emojis = [
        "🚂", "🚀", "🚁", "🚜",
        "🚗", "🚕", "🚙", "🚌",
        "🚎", "🏎", "🚓", "🚑",
        "🚒", "🚐", "🛻", "🚚",
    ]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }

    // emojis are String-s, so is the generic type thereof
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
