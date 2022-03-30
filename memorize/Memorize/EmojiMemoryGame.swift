

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String> {
        let emojisAll: Array<String> = ["🚂", "🚀", "🚁", "🚜",
                                        "🚗", "🚕", "🚙", "🚌",
                                        "🚎", "🏎", "🚓", "🚑",
                                        "🚒", "🚐", "🛻", "🚚", ]
        let emojis = emojisAll[randomPick: 6]
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
    
    func resetGame() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
