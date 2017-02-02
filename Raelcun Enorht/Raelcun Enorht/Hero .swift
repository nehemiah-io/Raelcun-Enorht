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
    
    var runAction: SKAction!
    var jumpAction: SKAction!
    var shootAction: SKAction!
    var isJumping = false
    var isShooting = false
    var healthPoints:Int = 10
    
    init() {
        
        let playerSize = CGSize(width: 40, height: 65)
        
        super.init(texture: nil, color: UIColor.blue, size: playerSize)
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func jump() {
        if isJumping{
            isJumping = true
            run(jumpAction)
        }
    }
    
    func shoot(){
        if isShooting{
            isShooting = true
            run(shootAction)
        }
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
