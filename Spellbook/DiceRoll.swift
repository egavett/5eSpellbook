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
    
    func diceRoll(upcastCount:Int) -> Int {
        <#function body#>
    }
}
