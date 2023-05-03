//
//  ViewController.swift
//  SpringAnimation_HW
//
//  Created by Kate Kashko on 2.05.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!

    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        presetLabel.text = "Preset: \(animation.preset)"
        curveLabel.text = "Curve: \(animation.curve)"
        forceLabel.text = "Force: \(String(format: "%.1f", animation.force))"
        durationLabel.text = "Duration: \(String(format: "%.1f", animation.duration))"
        delayLabel.text = "Delay: \(String(format: "%.1f", animation.delay))"
    }
    
    func randomAnimation() {
        springAnimationView.animation = animation.preset
        presetLabel.text = "Preset: \(animation.preset)"
        
        springAnimationView.curve = animation.curve
        curveLabel.text = "Curve: \(animation.curve)"
        
        springAnimationView.force = animation.force
        forceLabel.text = "Force: \(String(format: "%.1f", animation.force))"
        
        springAnimationView.duration = animation.duration
        durationLabel.text = "Duration: \(String(format: "%.1f", animation.duration))"
        
        springAnimationView.delay = animation.delay
        delayLabel.text = "Delay: \(String(format: "%.1f", animation.delay))"
        
        springAnimationView.animate()
    }
    
    @IBAction func runSpringButton(_ sender: SpringButton) {
        randomAnimation()
        
        animation = Animation.getAnimation()
        sender.setTitle(animation.preset, for: .normal)
    }
   
}

