//
//  AnimalTests.swift
//  ARProjectTests
//
//  Created by Niels Boerkamp on 20/11/2017.
//  Copyright © 2017 Niels Boerkamp. All rights reserved.
//

@testable import ARProject
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
    
    func testFeedNegativeValue() {
        self.testAnimal.Feed(nutritionValue: -50)
        
        // Hunger should not be affected by a negative value, since this is unexpecetd behaviour.
        XCTAssertTrue(self.testAnimal.hunger == 0)
    }
    
    func testDrink(){
        self.testAnimal.Drink(hidratationValue: 50)
        
        // thirst should be degreased by 50.
        XCTAssertTrue(self.testAnimal.thirst == -50)
        
        // Hunger should not be affected
        XCTAssertTrue(self.testAnimal.hunger == 0)
    }
    
    func testDrinkNegativeValue()
    {
        self.testAnimal.Drink(hidratationValue: -50)
        
        // Thirst should not be changed by a negative value, since this is unexpected behaviour.
        XCTAssertTrue(self.testAnimal.thirst == 0)
    }
}
