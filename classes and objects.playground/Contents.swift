//: Playground - noun: a place where people can play

import UIKit


// classes

class Ghost {
    
    var isAlive = true

    var strength = 9
    
    func kill() {
        
        isAlive = false
        
    }
    
    func isStrong() -> Bool {  // symbolizes that this method returns a boolean
    
        if strength > 10 {
            
            return true
            
        } else {
            
            return false
            
        }
        
    }
    
}

var ghost = Ghost() // new instance of Ghost class

print (ghost.isAlive)

ghost.strength = 20

print (ghost.strength)

ghost.kill()

print (ghost.isAlive)

print (ghost.isStrong())
