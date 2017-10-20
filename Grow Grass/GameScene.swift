//
//  GameScene.swift
//  Grow Grass
//
//  Created by ________ on 8/3/17.
//  Copyright © 2017 Crappy Apps. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let grass = SKSpriteNode(imageNamed: "grass")
    let grassLabel = SKLabelNode(fontNamed: "Arial")
    override func didMove(to view: SKView) {
        print("GameScene Load")
        scene?.backgroundColor = SKColor.white
        grass.position = CGPoint(x: 0, y: -1600)
        grass.setScale(0.75)
        self.addChild(grass)
        
        grassLabel.text = "Welcome to Grass Growing Simulator"
        grassLabel.fontColor = SKColor.gray
        grassLabel.position = CGPoint(x: 0, y: 500)
        grassLabel.zPosition = 1
        self.addChild(grassLabel)
        
			_ = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(moveGrass), userInfo: nil, repeats: true)
        }
    
	@objc func moveGrass()
    {
        grass.position.y = grass.position.y + 0.5
        print("moved grass")
        print(String(describing: grass.position.y))
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
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        if (grass.position.y >= 450)
        {
            
        }
    }
}
