//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Batuhan Kacmaz on 12.03.2023.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}

extension StringProtocol {
    var firstUppercased: String { lowercased().capitalized }
}
