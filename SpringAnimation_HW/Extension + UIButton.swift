//
//  Extension + UIButton.swift
//  SpringAnimation_HW
//
//  Created by Kate Kashko on 2.05.2023.
//

import UIKit

extension UIButton {
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.fromValue = 0.95 //кнопка уменьшится
        pulse.toValue = 1 // вернется в исходнее состояние
        pulse.autoreverses = true // в обратном направлении, те увеличится
        pulse.repeatCount = 2 // повторение
        pulse.duration = 0.6 // продолжительность действия fromValue - toValue
        pulse.initialVelocity = 0.5 // начальное ускорение
        pulse.damping = 1 //затухание
        
        //накладываем анимацию:
        layer.add(pulse, forKey: nil)
    }
}
