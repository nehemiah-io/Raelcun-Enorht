//
//  CountdownState.swift
//  Raelcun Enorht
//
//  Created by ms on 11/8/16.
//  Copyright © 2016 ms. All rights reserved.
//

import SpriteKit
import GameplayKit

class CountdownState: GKState{
    unowned let scene: GameScene
    
    init(scene: GameScene){
        self.scene = scene
    }
}
