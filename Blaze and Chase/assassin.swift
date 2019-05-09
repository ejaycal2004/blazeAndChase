//
//  assassin.swift
//  Blaze and Chase
//
//  Created by Elijah Calip on 4/11/19.
//  Copyright © 2019 Elijah Calip. All rights reserved.
//

import Foundation
import SpriteKit

class Assassin{
    var sprite = SKSpriteNode(imageNamed: "assassinCar")
    var speed = 200
    var xSpeed = 0
    var ySpeed = 1
    
    
   
    
    init(){
      
        sprite.size = CGSize(width: 150, height: 300)
        sprite.position = CGPoint(x: -20, y: 100)
        sprite.zPosition = 10
        }
  
    func move(){
        
    }
    

  
   
    
}


