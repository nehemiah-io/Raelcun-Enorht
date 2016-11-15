//
//  Enemy.swift
//  Raelcun Enorht
//
//  Created by Nehemiah Odior on 11/8/16.
//  Copyright © 2016 ms. All rights reserved.
//

import Foundation
import SpriteKit

class Enemy:SKSpriteNode{
    
    var healthPoints: Int = 4
    
    
    init() {
        
        let enemySize = CGSize(width: 20, height: 34)
        
        super.init(texture: nil, color: UIColor.red, size: enemySize)
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    func setup(){
        physicsBody = SKPhysicsBody(rectangleOf: size)
        
        physicsBody!.affectedByGravity = false
        physicsBody!.allowsRotation = false
        
        physicsBody!.categoryBitMask = PhysicsCategory.Enemy
        physicsBody!.collisionBitMask = PhysicsCategory.Hero
        physicsBody!.contactTestBitMask = PhysicsCategory.Hero|PhysicsCategory.Bullet
        
        
        
    }

}
