//
//  citizens.swift
//  Blaze and Chase
//
//  Created by Elijah Calip on 4/25/19.
//  Copyright © 2019 Elijah Calip. All rights reserved.
//

import Foundation
import SpriteKit

class Citizens{
    var sprite = SKSpriteNode(imageNamed: "citizen")
    var otherSprite = SKSpriteNode(imageNamed: "otherCitizen")
    var speed = 200
    var xSpeed = 0
    var ySpeed = 1
    
    init(){
    
    sprite.size = CGSize(width: 150, height: 300)
    sprite.position = CGPoint(x: -20, y: 100)
    sprite.zPosition = 10
    sprite.position = CGPoint(x: 108, y: -402)
    otherSprite.size = CGSize(width: 150, height: 300)
    otherSprite.position = CGPoint(x: -126, y: 1000)
    otherSprite.zPosition = 10
    
        
    }
    
    func move(){
        sprite.position = CGPoint(x: sprite.position.x , y: sprite.position.y + 10)
        otherSprite.position = CGPoint(x: otherSprite.position.x , y: otherSprite.position.y - 10)
        if sprite.position.y > 610{
            sprite.position.y = -655
    }
        if otherSprite.position.y < -655{
            otherSprite.position.y = 610
        }
}
}
