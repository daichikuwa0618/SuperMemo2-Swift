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

    public init(value: Double, minValue: Double = 1.3, maxValue: Double = 2.5) {
        self.value = value.restricted(lower: minValue, upper: maxValue)
        self.minValue = minValue
        self.maxValue = maxValue
    }

    public mutating func moveOnNext(with response: ResponseGrade) {
        let difficulty = Double(5 - response.quality)
        let newValue = value + (0.1 - difficulty * (0.08 + difficulty * 0.02))
        value = newValue.restricted(lower: minValue, upper: maxValue)
    }

}
