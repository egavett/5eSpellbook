//
//  DiceRoll.swift
//  Spellbook
//
//  Created by Elijah Gavett on 8/26/17.
//  Copyright © 2017 Elijah Gavett. All rights reserved.
//

import Foundation

class DiceRoll: NSObject {
    
    var diceNum: Int? // The number of dice being rolled
    var diceSize: Int? // The size of the dice being rolled (4, 6, 8, 10, 12, 20)
    
    init(diceNum:Int, diceSize:Int) {
        self.diceNum = diceNum
        self.diceSize = diceSize
        
    }
    
    func diceRoll() -> Int {
        return diceRoll(upcastCount: 0)
    }
    
    /**
     Calculates a random number based on the dice and number of dice defined. Allows accounting for spell upcasting
     
     - parameter upcastCount: If the spell has been cast at a higher level, then roll the appropriate number of dice
     
     - returns: the result of the dice roll
     
    */
    func diceRoll(upcastCount:Int) -> Int {
        let diceCount = diceNum! + upcastCount
        
        var result = 0
        
        for _ in 0..<diceCount {
            result += Int(arc4random_uniform(UInt32(diceSize!)) + 1)
        }
        
        return result
    }
    
}
