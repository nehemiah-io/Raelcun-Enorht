//
//  Bullet.swift
//  Raelcun Enorht
//
//  Created by ms on 11/8/16.
//  Copyright © 2016 ms. All rights reserved.
//

import Foundation
import SpriteKit

class Bullet: SKSpriteNode {
    // initializers
    
    init() {
     let bulletSize = CGSize (width: 20, height: 10)
        
        super.init(texture: nil, color: UIColor.cyan, size: bulletSize)
        
        setup()

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(){
        physicsBody = SKPhysicsBody(rectangleOf: size)
        
        physicsBody!.affectedByGravity = false
        physicsBody!.allowsRotation = false
        
        physicsBody!.categoryBitMask = PhysicsCategory.Bullet
        physicsBody!.collisionBitMask = PhysicsCategory.None
        physicsBody!.contactTestBitMask = PhysicsCategory.Enemy
        
        
    }
}
