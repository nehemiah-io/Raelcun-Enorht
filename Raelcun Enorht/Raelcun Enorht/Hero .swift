//
//  Hero .swift
//  Raelcun Enorht
//
//  Created by Nehemiah Odior on 11/8/16.
//  Copyright © 2016 ms. All rights reserved.
//

import Foundation
import SpriteKit

class Hero: SKSpriteNode{
    
    var cowboy: SKNode!
    var cactus: SKNode!
    var mosquito: SKNode!
    var healthPoints:Int = 10
    
    init() {
        
        let playerSize = CGSize(width: 40, height: 65)
        
        super.init(texture: nil, color: UIColor.blue, size: playerSize)
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setup(){
        physicsBody = SKPhysicsBody(rectangleOf: size)
        
        physicsBody!.affectedByGravity = false
        physicsBody!.allowsRotation = false
        
        physicsBody!.categoryBitMask = PhysicsCategory.Hero
        physicsBody!.collisionBitMask = PhysicsCategory.None
        physicsBody!.contactTestBitMask = PhysicsCategory.Enemy|PhysicsCategory.EnemyBullet
        
        
    }

}
