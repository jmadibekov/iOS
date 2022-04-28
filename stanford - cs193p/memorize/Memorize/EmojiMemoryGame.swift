

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame(emojiCount: 6)
    
    private static func createMemoryGame(emojiCount: Int) -> MemoryGame<String> {
        let emojisAll: Array<String> = ["🚂", "🚀", "🚁", "🚜",
                                        "🚗", "🚕", "🚙", "🚌",
                                        "🚎", "🏎", "🚓", "🚑",
                                        "🚒", "🚐", "🛻", "🚚", ]
        let emojis = emojisAll[randomPick: emojiCount]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
    func resetGame(emojiCount: Int) {
        model = EmojiMemoryGame.createMemoryGame(emojiCount: emojiCount)
    }
}
