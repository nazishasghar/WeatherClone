//
//  SmokeEffect.swift
//  WeatherClone
//
//  Created by Nazish Asghar on 01/07/21.
//

import SwiftUI
import SpriteKit
class SmokeView: SKScene  {
    override func sceneDidLoad() {
        size = UIScreen.main.bounds.size
        scaleMode = .resizeFill
        anchorPoint = CGPoint(x: 1, y: 0.8)
        backgroundColor = .clear
        let node = SKEmitterNode(fileNamed: "Fog.sks")!
        node.particlePositionRange.dx = UIScreen.main.bounds.width
        addChild(node)
    }
    
}

class RainView: SKScene  {
    override func sceneDidLoad() {
        size = UIScreen.main.bounds.size
        scaleMode = .resizeFill
        anchorPoint = CGPoint(x: 0.5, y: 1)
        backgroundColor = .clear
        let node = SKEmitterNode(fileNamed: "Rain.sks")!
        node.particlePositionRange.dx = UIScreen.main.bounds.width
        addChild(node)
       
    }
    
}

