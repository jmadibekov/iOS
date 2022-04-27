//
//  MemoryGame.swift
//  Memorize
//
//  Created by Nurbakyt on 19.04.2022.
//
//  This is the Model! It is UI independent.
//  Model is the single source of truth. 

import Foundation

// here 'CardContent' is a "don't care" type, aka the "generic" type
// our "don't care" type 'CardContent' has to behave like Equatable
// (so we do actually care about it a little bit)
struct MemoryGame<CardContent> where CardContent: Equatable {
    private(set) var cards: Array<Card>
    
    private var indexOfTheOneAndOnlyFaceUpCard: Int? // equals = .none automatically
    
    mutating func choose(_ card: Card) {
        print("You tapped the", card)
        
        if let chosenIndex = cards.firstIndex(where: { $0.id == card.id }),
            !cards[chosenIndex].isFaceUp,
            !cards[chosenIndex].isMatched
        {
//            var chosenCard = cards[chosenIndex] // this makes a copy of the struct
            
            if let potentialMatchIndex = indexOfTheOneAndOnlyFaceUpCard {
                if cards[chosenIndex].content == cards[potentialMatchIndex].content {
                    cards[chosenIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                }
                indexOfTheOneAndOnlyFaceUpCard = nil
            } else {
                for index in cards.indices {
                    cards[index].isFaceUp = false
                }
                indexOfTheOneAndOnlyFaceUpCard = chosenIndex
            }
            
            cards[chosenIndex].isFaceUp.toggle()
        }
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
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent

        var id: Int // needed to conform the protocol of 'Identifiable'
    }
}
