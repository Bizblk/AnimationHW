//
//  DataManager.swift
//  AnimationHW
//
//  Created by Виталий Оранский on 26.04.2021.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let presents = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}

}


