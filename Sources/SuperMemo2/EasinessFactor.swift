//
//  EasinessFactor.swift
//  
//
//  Created by Daichi Hayashi on 2022/02/27.
//

import Foundation

/// E-Factor
public struct EasinessFactor {

    public private(set) var value: Double

    public private(set) var minValue: Double
    public private(set) var maxValue: Double

    public init(value: Double, minValue: Double = 1.1, maxValue: Double = 2.5) {
        self.value = value.restricted(lower: minValue, upper: maxValue)
        self.minValue = minValue
        self.maxValue = maxValue
    }

}
