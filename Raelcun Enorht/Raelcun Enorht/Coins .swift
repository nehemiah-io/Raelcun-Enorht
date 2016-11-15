//
//  Coins .swift
//  Raelcun Enorht
//
//  Created by ms on 11/14/16.
//  Copyright © 2016 ms. All rights reserved.
//

import Foundation
import GameplayKit
import SpriteKit

class Coin: SKSpriteNode {
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func setup(){
        physicsBody = SKPhysicsBody(rectangleOf: size)
        
        physicsBody!.affectedByGravity = false
        physicsBody!.allowsRotation = false
        
        physicsBody!.categoryBitMask = PhysicsCategory.None
        physicsBody!.collisionBitMask = PhysicsCategory.None
        physicsBody!.contactTestBitMask = PhysicsCategory.Hero
        
        
    }

}
