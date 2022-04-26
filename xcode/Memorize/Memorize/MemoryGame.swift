//
//  MemoryGame.swift
//  Memorize
//
//  Created by Nurbakyt on 19.04.2022.
//
//  This is the Model!

import Foundation

// here 'CardContent' is a "don't care" type, aka the "generic" type
struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        // add numberOfPairsOfCards x 2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            
            // each of the cards have unique id-s
            cards.append(Card(content: content, id: pairIndex * 2))
            cards.append(Card(content: content, id: pairIndex * 2 + 1))
        }
    }
    
    // making a 'Card' behave like 'Identifiable'
    // (this is the same as how 'ContentView' behaves like a 'View')
    // so that we can 'ForEach' it
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent

        var id: Int // needed to conform the protocol of 'Identifiable'
    }
}
