//
//  calculatorTests.swift
//  calculatorTests
//
//  Created by student on 03/10/2023.
//

import XCTest
@testable import calculator

final class calculatorTests: XCTestCase {

    func  testPositiveScenarioForAddCalculation(){
        let value1: Int = 3
        let value2: Int = 2
        
        let result = Calculations().add(value1: value1, value2: value2)
        
        XCTAssertEqual(5, result)
        
    }
    func  testNegativeScenarioForAddCalculation(){
        let value1: Int = 1
        let value2: Int = 2
        
        let result = Calculations().add(value1: value1, value2: value2)
        
        XCTAssertNotEqual(5, result)
    }
    func  testPositiveScenarioForSubCalculation(){
        let value1: Int = 3
        let value2: Int = 2
        
        let result = Calculations().subtract(value1: value1, value2: value2)
        
        XCTAssertEqual(1, result)
    }
    func  testNegativeScenarioForSubCalculation(){
        let value1: Int = 3
        let value2: Int = 2
        
        let result = Calculations().subtract(value1: value1, value2: value2)
        
        XCTAssertNotEqual(3, result)
    }
    func  testPositiveScenarioForProdCalculation(){
        let value1: Int = 3
        let value2: Int = 2
        
        let result = Calculations().multiply(value1: value1, value2: value2)
        
        XCTAssertEqual(6, result)
    }
    func  testNegativeScenarioForProdCalculation(){
        let value1: Int = 3
        let value2: Int = 2
        
        let result = Calculations().multiply(value1: value1, value2: value2)
        
        XCTAssertNotEqual(1, result)
    }
    func testPositiveScenarioForDivCalculation(){
        let value1: Int = 4
        let value2: Int = 2
        
        let result = Calculations().divide(value1: value2, value2: value1)
        
        XCTAssertEqual(2.0, result)
    }
    func testZeroScenarioForDivCalculation(){
        let value1: Int = 3
        let value2: Int = 0
        
        let result = Calculations().divide(value1: value1, value2: value2)
        
        XCTAssertNil(result)
    }
    func testPositiveScenarioForSinCalculation(){
        let value: Double = 4.0
        
        let result = Calculations().sinus(value: value)
        
        XCTAssertLessThanOrEqual(-1, result)
        XCTAssertGreaterThanOrEqual(1, result)
    }

}
