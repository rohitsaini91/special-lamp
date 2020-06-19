//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Rohit Saini on 17/06/20.
//  Copyright © 2020 Rohit Saini. All rights reserved.
//


//By importing SwiftUI we get Foundation inside of it so dont need to import Foundation
import SwiftUI

class EmojiMemoryGame:ObservableObject{
     @Published private var model:MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String>{
        let emojis = ["🌏","🔥"]
        return MemoryGame<String>(numberOfPairOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
        
    
  
    //MARK:- Access to the model
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    
    //MARK:- Intents
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
