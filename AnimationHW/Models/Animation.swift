//
//  Animation.swift
//  AnimationHW
//
//  Created by Виталий Оранский on 26.04.2021.
//

import Spring

struct Animation {
    let preset: Spring.AnimationPreset
    let curve: Spring.AnimationCurve
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    static func getAnimations() -> [Animation] {
        
        var animations = [Animation]()
        
        let presets = DataManager.shared.presents.shuffled()
        let curves = DataManager.shared.curves.shuffled()
        
        for index in 0..<min(presets.count, curves.count) {
            animations.append(Animation(preset: presets[index],
                                        curve: curves[index],
                                        force: CGFloat.random(in: 1...2),
                                        duration: CGFloat.random(in: 1...3),
                                        delay: CGFloat.random(in: 0...1)))
        }
        return animations
    }
}







