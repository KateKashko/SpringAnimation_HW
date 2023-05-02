//
//  ViewController.swift
//  SpringAnimation_HW
//
//  Created by Kate Kashko on 2.05.2023.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!

    @IBAction func runSpringButton(_ sender: SpringButton) {
        springAnimationView.animation = "shake"
        springAnimationView.animate()
    }
    
    
}

