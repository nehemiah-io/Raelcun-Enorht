//
//  GameOverState.swift
//  Raelcun Enorht
//
//  Created by ms on 11/8/16.
//  Copyright © 2016 ms. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameOverState: GKState {
    unowned let scene: GameScene
    
    init(scene: GameScene) {
        self.scene = scene
    }
    
    
    override func isValidNextState(_ stateClass: AnyClass) -> Bool {
        return stateClass is PlayState.Type
    }
    
    
    override func didEnter(from previousState: GKState?) {
        // Animate player death
        print("Entering Game Over State From: \(previousState)")
        //scene.Hero.deathAnimation()
        //scene.showGameOver()
    }
    
    override func update(deltaTime seconds: TimeInterval) {
        //
    }
}
