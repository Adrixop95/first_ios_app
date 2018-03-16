//
//  first_appTests.swift
//  first_appTests
//
//  Created by Adrian Rupala on 12.03.2018.
//  Copyright © 2018 Adrian Rupala. All rights reserved.
//

import XCTest
@testable import first_app

class first_appTests: XCTestCase {
    
    //MARK: Meal class tests
    
    //Confirm that the meal initializer returns a Meal object when passed valid parameters.
    
    func testMealInitalizationSucceeds() {
        
        //zero rating
        
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        //Highest possible rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    func testMealInitializationFail() {
        
        //Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        //Empty string
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 5)
        XCTAssertNil(emptyStringMeal)
        
        //Rating exceed maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }

}
