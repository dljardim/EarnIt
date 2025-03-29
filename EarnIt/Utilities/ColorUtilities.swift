//
//  ColorUtilities.swift
//  EarnIt
//
//  Created by Damian Jardim on 3/28/25.
//

import SwiftUI

public extension Color {
    /// Generates a random color
    static func random() -> Color {
        return Color(
            red: Double.random(in: 0...1),
            green: Double.random(in: 0...1),
            blue: Double.random(in: 0...1)
        )
    }
    
    /// Computes the luminance of a color based on WCAG standards
    func luminance() -> Double {
        guard let components = UIColor(self).cgColor.components else { return 0 }
        let red = components[0]
        let green = components.count > 1 ? components[1] : red
        let blue = components.count > 2 ? components[2] : red
        
        func adjust(_ value: CGFloat) -> CGFloat {
            return value <= 0.03928 ? value / 12.92 : pow((value + 0.055) / 1.055, 2.4)
        }
        
        return Double((0.2126 * adjust(red)) + (0.7152 * adjust(green)) + (0.0722 * adjust(blue)))
    }
}
