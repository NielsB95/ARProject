//
//  AnimalLogicTests.swift
//  ARProjectTests
//
//  Created by Niels Boerkamp on 20/11/2017.
//  Copyright © 2017 Niels Boerkamp. All rights reserved.
//

@testable import ARProject
import XCTest

class AnimalLogicTests: XCTestCase {
    
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
    
    /**
        Hunger
     */
    
    func testTimeTillCriticalHungerLevel() {
        self.testAnimal.hunger = 50
        let minutes = AnimalLogic.TimeTillCriticalHungerLevel(animal: self.testAnimal)
        
        XCTAssertTrue(minutes == 50)
    }
    
    func testTimeTillCriticalHungerLevelLessThanZero() {
        self.testAnimal.hunger = 85
        let minutes = AnimalLogic.TimeTillCriticalHungerLevel(animal: self.testAnimal)
        
        XCTAssertTrue(minutes == 0)
    }
    
    func testTimeTillCriticalHungerLevelNegativeValue() {
        self.testAnimal.hunger = -100
        let minutes = AnimalLogic.TimeTillCriticalHungerLevel(animal: self.testAnimal)
        
        XCTAssertTrue(minutes == 350)
    }

    /**
        Thirst
     */
    
    func testTimeTrillCriticalThirstLevel() {
        self.testAnimal.thirst = 50
        let minutes = AnimalLogic.TimeTillCriticalThirstLevel(animal: self.testAnimal)
        
        XCTAssertTrue(minutes == 15)
    }
    
    func testTimeTrillCriticalThirstLevelLessThanZero() {
        self.testAnimal.thirst = 85
        let minutes = AnimalLogic.TimeTillCriticalThirstLevel(animal: self.testAnimal)
        
        XCTAssertTrue(minutes == 0)
    }
    
    func testTimeTrillCriticalThirstLevelNegativeValue() {
        self.testAnimal.thirst = -50
        let minutes = AnimalLogic.TimeTillCriticalThirstLevel(animal: self.testAnimal)
        
        XCTAssertTrue(minutes == 165)
    }
}

