//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Nurbakyt on 19.04.2022.
//
//  This is the ModelView! It binds the View to the Model. It also acts as an
//  interpretation of the Model.

import SwiftUI

class EmojiMemoryGame: ObservableObject {
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
    // anytime anything changes in 'model', '@Published' will let the world know that it has changed
    // by the way, Swift can detect changes only in structs (so it can't do that for classes)
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
