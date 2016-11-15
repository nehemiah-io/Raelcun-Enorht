//
//  Joystick.swift
//  Raelcun Enorht
//
//  Created by ms on 11/8/16.
//  Copyright © 2016 ms. All rights reserved.
//

import Foundation
import SpriteKit

class Joystick: SKNode {
    let joystick: SKShapeNode
    let stick: SKShapeNode
    
    let maxRange:CGFloat = 50
    
    var xValue: CGFloat = 0
    var yValue: CGFloat = 0
    
    
    
    
    
    func show(_ touch: UITouch) {
        isHidden = false
        position = touch.location(in: parent!)
    }
    
    func move(_ touch: UITouch) {
        let p = touch.location(in: self)
        let x = p.x.clamped(-maxRange, maxRange)
        let y = p.y.clamped(-maxRange, maxRange)
        
        stick.position = CGPoint(x: x, y: y)
        xValue = x / maxRange
        yValue = y / maxRange
    }
    
    func hide() {
        isHidden = true
        stick.position = CGPoint.zero
        xValue = 0
        yValue = 0
    }
    
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    
    
    
    override init() {
        let joystickRect = CGRect(x: 0, y: 0, width: 100, height: 100)
        let joystickPath = UIBezierPath(ovalIn: joystickRect)
        
        joystick = SKShapeNode(path: joystickPath.cgPath, centered: true)
        joystick.lineWidth = 2
        joystick.strokeColor = UIColor.white
        joystick.fillColor = UIColor(white: 1, alpha: 0.5)
        
        let stickRect = CGRect(x: 0, y: 0, width: 40, height: 40)
        let stickPath = UIBezierPath(ovalIn: stickRect)
        
        stick = SKShapeNode(path: stickPath.cgPath, centered: true)
        stick.lineWidth = 2
        stick.strokeColor = UIColor(white: 0.2, alpha: 1)
        stick.fillColor = UIColor(white: 0, alpha: 0.5)
        
        super.init()
        
        addChild(joystick)
        joystick.addChild(stick)
        
        isHidden = true
        isUserInteractionEnabled = true
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



extension CGFloat {
    /**
     * Ensures that the float value stays between the given values, inclusive.
     */
    public func clamped(_ v1: CGFloat, _ v2: CGFloat) -> CGFloat {
        let min = v1 < v2 ? v1 : v2
        let max = v1 > v2 ? v1 : v2
        return self < min ? min : (self > max ? max : self)
    }
    
    /**
     * Ensures that the float value stays between the given values, inclusive.
     */
    public mutating func clamp(_ v1: CGFloat, _ v2: CGFloat) -> CGFloat {
        self = clamped(v1, v2)
        return self
    }
}

