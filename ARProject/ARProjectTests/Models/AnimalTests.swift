//
//  AnimalTests.swift
//  ARProjectTests
//
//  Created by Niels Boerkamp on 20/11/2017.
//  Copyright © 2017 Niels Boerkamp. All rights reserved.
//

@testable import ARProject
import Foundation
import XCTest

class AnimalTests: XCTestCase {
 
    let animalName = "Niels"
    var testAnimal:Animal!
    
    override func setUp() {
        super.setUp()

        
        self.testAnimal = Animal(name:animalName);
    }
    
    override func tearDown() {
        super.tearDown()
        self.testAnimal = nil
    }
    
    // Check if the name is set correctly
    func testInit() {
        XCTAssertTrue(self.testAnimal.name == self.animalName)
    }
    
    func testFeed() {
        self.testAnimal.Feed(nutritionValue: 50)
        
        // hunger should be degreased by 50.
        XCTAssertTrue(self.testAnimal.hunger == -50.0)
        
        // thirst should not be affected.
        XCTAssertTrue(self.testAnimal.thirst == 0)
    }
}
