//
//  Repetition.swift
//  
//
//  Created by Daichi Hayashi on 2022/02/27.
//

import Foundation

public struct Repetition {

    public var number: UInt
    public var interval: UInt

    public static let initial: Repetition = .init(number: 0, interval: 0)

    // I(1) := 1
    // I(2) := 6
    // for n>2: I(n) := I(n-1) * EF
    // where;
    // I(n): repetition interval after the n-th repetition,
    // EF: easiness factor.
    /// move repetition to next step using E-Factor.
    /// effects: increment number of repetition, calculate next interval using f(EF).
    /// - Parameter factor: E-Factor
    mutating func moveOnNext(with factor: EasinessFactor) {
        // increments number of repetition
        defer { number += 1 }

        // calculate next interval
        switch number {
        case 0:
            interval = 1

        case 1:
            interval = 6

        default:
            let result = Double(interval) * factor.value
            interval = UInt(result.rounded(.toNearestOrAwayFromZero))
        }
    }
}
