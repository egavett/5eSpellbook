//
//  Spell.swift
//  Spellbook
//
//  Created by Elijah Gavett on 8/26/17.
//  Copyright © 2017 Elijah Gavett. All rights reserved.
//

import Foundation

class Spell: NSObject {
    
    var name:String?
    
    var level:Int? // level of spell [0-9]
    var school:String?
    
    var castingTime:String?
    var range:String?
    var components:[String]?
    var duration:String?
    
    var spellDescription:String? // Text description of the spell's effect
    
    var diceRoll:[DiceRoll]? // List of dice rolls
    
    var upcastScale:(Int,Int)? // The number of dice added per addicional spell-slot level
    
}
