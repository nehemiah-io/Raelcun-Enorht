//
//  BossMonster.swift
//  Raelcun Enorht
//
//  Created by Nehemiah Odior on 11/8/16.
//  Copyright © 2016 ms. All rights reserved.
//

import Foundation
import SpriteKit

class BossMonster:SKSpriteNode{
    
    var healthPoints:Int = 20
    
    
    init() {
        
        let bossSize = CGSize(width: 60, height: 80)
        
        super.init(texture: nil, color: UIColor.black, size: bossSize)
        
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
