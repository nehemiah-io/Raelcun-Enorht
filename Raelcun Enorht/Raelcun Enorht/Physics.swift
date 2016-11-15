//
//  Physics.swift
//  Raelcun Enorht
//
//  Created by Nehemiah Odior on 11/8/16.
//  Copyright © 2016 ms. All rights reserved.
//

import Foundation

struct PhysicsCategory{
    static let None:            UInt32 = 0          // 0000000
    static let Hero:            UInt32 = 0b1        // 0000001    00001
    static let Coin:            UInt32 = 0b100      // 0000100    00100
    static let Enemy:           UInt32 = 0b10000    // 0010000
    static let Bullet:          UInt32 = 0b100000   // 0100000
    static let EnemyBullet:     UInt32 = 0b1000000  // 1000000

    
}