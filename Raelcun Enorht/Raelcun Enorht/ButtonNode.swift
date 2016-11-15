//
//  ButtonNode.swift
//  Raelcun Enorht
//
//  Created by Nehemiah Odior on 11/8/16.
//  Copyright © 2016 ms. All rights reserved.
//

import Foundation
import SpriteKit

enum ButtonState {
    case active
    case normal
    case disabled
}


class ButtonNode: SKSpriteNode {
    let normal: SKTexture
    let active: SKTexture
    let disabled: SKTexture
    
    var selectedHandler: () -> Void = { print("No button action set") }
    
    func setButtonState() {
        switch state {
        case .normal:
            texture = normal
            isUserInteractionEnabled = true
            
        case .active:
            texture = active
            
        case .disabled:
            texture = disabled
            isUserInteractionEnabled = false
            
        }
    }
    
    var state: ButtonState = ButtonState.normal {
        didSet {
            setButtonState()
        }
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        state = .active
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        state = .normal
        selectedHandler()
    }
    
    
    init(normalImageNamed: String, activeImageNamed: String, disabledImageNamed: String) {
        normal = SKTexture(imageNamed: normalImageNamed)
        active = SKTexture(imageNamed: activeImageNamed)
        disabled = SKTexture(imageNamed: disabledImageNamed)
        
        super.init(texture: normal, color: UIColor.clear, size: normal.size())
        
        isUserInteractionEnabled = true
        
        state = .normal
        setButtonState()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
