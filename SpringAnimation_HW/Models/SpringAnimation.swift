//
//  SpringAnimation.swift
//  SpringAnimation_HW
//
//  Created by Kate Kashko on 2.05.2023.
//

import Foundation

struct Animation {

    var preset: String
    var curve: String    
    var force: Double
    var duration: Double
    var delay: Double
    
    static func getAnimation() -> Animation {
        Animation(
            preset: SpringData.shared.presets.randomElement() ?? "pop",
            curve: SpringData.shared.curves.randomElement() ?? "easeIn",
            force: Double.random(in: 0.1...2.0),
            duration: Double.random(in: 0.1...2.0),
            delay: Double.random(in: 0.1...1.0)
        )
    }
}
