//
//  Comparable+.swift
//  
//
//  Created by Daichi Hayashi on 2022/02/27.
//

import Foundation

extension Comparable {

    /// limits value to grater than lower value and smaller than upper value
    func restricted(lower: Self, upper: Self) -> Self {
        max(lower, min(upper, self))
    }

}
