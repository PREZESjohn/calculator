//
//  Calculations.swift
//  calculator
//
//  Created by student on 03/10/2023.
//

import Foundation

struct Calculations
{

    func add(value1:Int, value2:Int) -> Double{
        return Double(value1 + value2)
    }
    func subtract(value1:Int, value2:Int) -> Double{
        return Double(value1 - value2)
    }
    func divide(value1:Int, value2:Int) -> Double?{
//         if(value2 == 0){
//            return 0.0
//         }
        guard (value2 != 0) else {return nil}
         return Double(Double(value2)/Double(value1));
    }
    func multiply(value1:Int, value2:Int) -> Double{
        return Double(value1 * value2)
    }
    func sinus(value:Double) -> Double{
        return sin(value)
    }
}
