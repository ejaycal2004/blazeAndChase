//
//  road.swift
//  Blaze and Chase
//
//  Created by Elijah Calip on 4/25/19.
//  Copyright © 2019 Elijah Calip. All rights reserved.
//

import Foundation
import SpriteKit



class Road{
    var gameOver = SKSpriteNode(imageNamed: "gameOver")
    var sprite = SKSpriteNode(imageNamed: "theRoad")
    var sprite2 = SKSpriteNode(imageNamed: "theRoad")
    var sprite3 = SKSpriteNode(imageNamed: "theRoad")
    var speed = 100
    var xSpeed = 0
    var ySpeed = 1
    
    init(){
        sprite.size = CGSize(width: 500, height: 1000)
        sprite.position = CGPoint(x: -10, y: 0)
        sprite2.size = CGSize(width: 500, height: 1000)
        sprite2.position = CGPoint(x: -10, y: 1000)
        sprite3.size = CGSize(width: 500, height: 1000)
        sprite3.position = CGPoint(x: -10, y: 2000)
        sprite.zPosition = -1
        sprite2.zPosition = -1
        sprite3.zPosition = -1
        gameOver.size = CGSize(width: 100, height: 100)
        gameOver.position = CGPoint(x: 0, y: 0)
    }
    
    func move(){
        
        sprite.position = CGPoint(x: sprite.position.x , y: sprite.position.y - 50)
        sprite2.position = CGPoint(x: sprite2.position.x , y: sprite2.position.y - 50)
        sprite3.position = CGPoint(x: sprite3.position.x , y: sprite3.position.y - 50)
        
        
        if (sprite.position.y < -sprite.size.height - 200){
            sprite.position = CGPoint(x: sprite.position.x, y: sprite.position.y + sprite.size.height * 3)
        }
        if (sprite2.position.y < -sprite2.size.height - 200){
            sprite2.position = CGPoint(x: sprite2.position.x , y: sprite2.position.y + sprite2.size.height * 3)
        
    }
        if (sprite3.position.y < -sprite3.size.height - 200){
            sprite3.position = CGPoint(x: sprite3.position.x , y: sprite3.position.y + sprite3.size.height * 3)
        
}
        
        
    
}
}
