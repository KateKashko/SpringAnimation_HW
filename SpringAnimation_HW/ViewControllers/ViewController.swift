//
//  ViewController.swift
//  SpringAnimation_HW
//
//  Created by Kate Kashko on 2.05.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationLabel: SpringLabel! {
        didSet {
            animationLabel.text = animation.description
        }
    }

    // MARK: - Private properties
    private var animation = Animation.randomAnimation
    
    // MARK: IB Actions
    @IBAction func animationButtonPressed(_ sender: SpringButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.duration = animation.duration
        animationView.force = animation.force
        animationView.delay = animation.delay
        animationView.animate()

        animation = Animation.randomAnimation
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
   
}

