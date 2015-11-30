//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Mark Tareshawty on 11/29/15.
//  Copyright © 2015 Mark Tareshawty. All rights reserved.
//

import UIKit
import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
  // MARK: FoodTracker Tests
  func testMealInitialization() {
    // Success case.
    let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
    XCTAssertNotNil(potentialItem)
    
    // Failure cases.
    let noName = Meal(name: "", photo: nil, rating: 0)
    XCTAssertNil(noName, "Empty name is invalid")
    
    let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
    XCTAssertNotNil(badRating)
  }
}
