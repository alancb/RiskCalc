//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Contender {
    
    let oneDie: Bool
    let secondDie: Bool
    let thirdDie: Bool
    
    var isAttacker: Bool
    
    var numberOfDice: Int
    
    init(number: Int, isAttacker: Bool) {
        
        numberOfDice = number
        self.isAttacker = isAttacker
        
        if numberOfDice == 1 {
            oneDie = true
            secondDie = false
            thirdDie = false
        } else if numberOfDice == 2 {
            oneDie = true
            secondDie = true
            thirdDie = false
        } else if numberOfDice > 2 {
            oneDie = true
            secondDie = true
            thirdDie = true
        } else {
            oneDie = false
            secondDie = false
            thirdDie = false
        }
    }
}

func rollDice(attackersDice: Int, defendersDice: Int) {
    
    let attackFirstDie = Int(arc4random_uniform(6) + 1)
    let attackSecondDie = Int(arc4random_uniform(6) + 1)
    let attackThirdDie = Int(arc4random_uniform(6) + 1)
    
    let defenderFirstDie = Int(arc4random_uniform(6) + 1)
    let defenderSecondDie = Int(arc4random_uniform(6) + 1)
    
    let bestDefenderDie = max(defenderFirstDie, defenderSecondDie)
    let bestAttackerDie = max(attackersDice, attackSecondDie, attackThirdDie, 0)
    
}

rollDice(attackersDice: 3, defendersDice: 2)

let alan = Contender(number: 2, isAttacker: false)
let noah = Contender(number: 3, isAttacker: true)

func fight(attacker: Contender, defender: Contender) {
    
    

}

fight(attacker: noah, defender: alan)









