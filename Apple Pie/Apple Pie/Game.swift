//
//  Game.swift
//  Apple Pie
//
//  Created by ChenZengzhan on 2017-09-20.
//  Copyright © 2017 MalcolmChen. All rights reserved.
//

import Foundation

struct game{
    var word:String
    var remainingIncorrect:Int
    var guessLetters : [Character]
    var resultWord : String{
        var rword=""
        for eachLetter in word.characters{
            if guessLetters.contains(eachLetter){
                rword += String(eachLetter)
            }
            else{
                rword += "_"
            }
        }
        return rword
    }
    
    mutating func playerGuess(char:Character) {
        guessLetters.append(char)
        if !word.characters.contains(char){
            remainingIncorrect -= 1
        }
        
    }
    
}
