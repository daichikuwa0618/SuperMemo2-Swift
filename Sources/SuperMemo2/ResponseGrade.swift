//
//  ResponseGrade.swift
//  
//
//  Created by Daichi Hayashi on 2022/02/27.
//

import Foundation

public enum ResponseGrade: Int {

    /// complete blackout.
    case blackout
    /// incorrect response; the correct one remembered.
    case incorrect
    /// incorrect response; where the correct one seemed easy to recall.
    case mistake
    /// correct response recalled with serious difficulty.
    case difficult
    /// correct response after a hesitation.
    case hesitation
    /// perfect response.
    case perfect

}
