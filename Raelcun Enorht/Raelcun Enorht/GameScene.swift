//
//  GameScene.swift
//  Raelcun Enorht
//
//  Created by Nehemiah Odior on 11/8/16.
//  Copyright (c) 2016 ms. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    
    
    override func didMove(to view: SKView) {
        /* Setup your scene here */
       
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       /* Called when a touch begins */
        
        for touch in touches {
            let location = touch.location(in: self)
            
                    }
    }
   
    override func update(_ currentTime: TimeInterval) {
        /* Called before each frame is rendered */
    }
    
    func setupStateeMachine(){
        let playState = PlayState(scene:self)
        let gameOverState = GameOverState(scene: self)
        let countdownState = CountdownState(scene: self)
        
      //  gameState = GKStateMachine(states: [playState, gameOverState, countdownState])
       // gameState.enterState(PlayState)
    }
}
