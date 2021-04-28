//
//  ViewController.swift
//  AnimationHW
//
//  Created by Виталий Оранский on 26.04.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationButton: SpringButton!
    @IBOutlet weak var animationDescription: UILabel!
    
    private var index = 0
    private var animations = Animation.getAnimations()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.layer.cornerRadius = 15
        animationButton.layer.cornerRadius = 15
        animationButton.setTitle(animations[index].preset.rawValue, for: .normal)
    }
    
    @IBAction func animationActionButton(_ sender: SpringButton) {
        let randomIndex = Int.random(in: 0..<animations.count)
        
        sender.animation = animations[randomIndex].preset.rawValue
        sender.curve = animations[randomIndex].curve.rawValue
        sender.force = animations[randomIndex].force
        sender.delay = animations[randomIndex].delay
        sender.animate()
        
        animationView.animation = animations[index].preset.rawValue
        animationView.curve = animations[index].curve.rawValue
        animationView.force = animations[index].force
        animationView.delay = animations[index].delay
        animationView.duration = animations[index].duration
        animationView.animate()
        getAnimationDescription()

        
        
        if index != animations.count {
            index += 1
        } else {
            index = 0
        }
        sender.setTitle(animations[index].preset.rawValue, for: .normal)
    }
    
    private func getAnimationDescription() {
        animationDescription.text = """
            preset: \(animations[index].preset.rawValue)
            curve: \(animations[index].curve.rawValue)
            force: \(animations[index].force)
            delay: \(animations[index].delay)
            duration: \(animations[index].duration)
            """
    }
    
    
}

