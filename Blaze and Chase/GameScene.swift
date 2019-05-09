//
//  GameScene.swift
//  Blaze and Chase
//
//  Created by Elijah Calip on 4/11/19.
//  Copyright © 2019 Elijah Calip. All rights reserved.
//

import SpriteKit
import GameplayKit


var assassin = Assassin()

class GameScene: SKScene {
    
    
    var road = Road()
    var citizens = Citizens()
    
    
    
    override func didMove(to view: SKView) {
        
        //road.sprite.anchorPoint = CGPoint(x: 0, y: 0)
        road.sprite.zPosition = 2
        
        //road.sprite2.anchorPoint = CGPoint(x: 0, y: 0)
        
        assassin.sprite.position = CGPoint(x: -5, y: -383)
        self.addChild(road.sprite2)
        self.addChild(assassin.sprite)
        self.addChild(road.sprite)
        self.addChild(road.sprite3)
        self.addChild(citizens.sprite)
        self.addChild(citizens.otherSprite)
        
        
        
        
        
        
    }
    
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            let location = touch.location(in: self)
            
            assassin.sprite.position.x = location.x
            assassin.sprite.position.y = location.y
            
            print("x:\(assassin.sprite.position.x), y:\(assassin.sprite.position.y)")
            
           
            }
        if assassin.sprite.position.y > 610{
            road.sprite.position = CGPoint(x: road.sprite.position.x, y: road.sprite.position.y - 200)
            road.sprite2.position = CGPoint(x: road.sprite2.position.x, y: road.sprite2.position.y - 200)
            road.sprite3.position = CGPoint(x: road.sprite3.position.x, y: road.sprite3.position.y - 200)
            assassin.sprite.position.y = -666
        }
        
        if assassin.sprite.position.x > 223{
            assassin.sprite.removeFromParent()
            
            
            
            
        }
        if assassin.sprite.position.x < -300 {
            assassin.sprite.removeFromParent()
            
            
        }
        
    
    }
        

           
            
        
    
        
        func touchDown(atPoint pos : CGPoint) {
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
       
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
     
       
        
        
        
        
    
}
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        road.move()
        citizens.move()
       
        
        
        
        
    }



}
