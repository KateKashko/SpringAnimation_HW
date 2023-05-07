//
//  SpringAnimation.swift
//  SpringAnimation_HW
//
//  Created by Kate Kashko on 2.05.2023.
//

import Foundation

struct Animation: CustomStringConvertible {
    
    var preset: String
    var curve: String
    var force: Double
    var duration: Double
    var delay: Double
    
    var description: String {
        """
        Preset: \(preset)
        Curve: \(curve)
        Forse: \(String (format: "%.02f", force))
        Duration: \(String (format: "%.02f", duration))
        Delay: \(String (format: "%.02f", delay))
        """
    }
    static var randomAnimation: Animation {
        Animation(
            preset: DataStore.shared.animations.randomElement()?.rawValue ?? "pop",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 0.8...1.6),
            delay: 1
        )
    }
}
