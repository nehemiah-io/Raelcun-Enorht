//
//  GameOver.swift
//  Raelcun Enorht
//
//  Created by ms on 11/8/16.
//  Copyright © 2016 ms. All rights reserved.
//

import SpriteKit

class GameOver: SKSpriteNode {
    
    let label: SKLabelNode
    let button: SKSpriteNode
    
    
    // MARK: - Init
    
    init(size: CGSize) {
        label = SKLabelNode(fontNamed: "Helvetica")
        button = SKSpriteNode(color: UIColor.white, size: CGSize(width: 80, height: 40))
        let color = UIColor(white: 1, alpha: 0.5)
        
        super.init(texture: nil, color: color, size: size)
        
        setup()
        setupLabel()
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    // MARK: - Label
    
    func setup() {
        zPosition = PostitionZ.GameOver
    }
    
    func setupLabel() {
        addChild(label)
        label.text = "Game Over"
    }
    
    func setupButton() {
        addChild(button)
        button.position.y = size.height / -2 + 60
        button.name = "start over"
    }
    
}
