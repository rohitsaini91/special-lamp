//
//  MemoryGame.swift
//  Memorize
//
//  Created by Rohit Saini on 17/06/20.
//  Copyright © 2020 Rohit Saini. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent>{
    var cards: Array<Card>
    func choose(card:Card){
        print("Card Choosen: \(card)")
    }
    
    init(numberOfPairOfCards:Int,cardContentFactory:(Int) -> CardContent){
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairOfCards{
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex * 2))
            cards.append(Card(content: content, id: pairIndex * 2 + 1))
        }
    }
    struct Card:Identifiable {
        var isFaceUp:Bool = true
        var isMatched:Bool = false
        var content:CardContent
        var id:Int
    }
}
