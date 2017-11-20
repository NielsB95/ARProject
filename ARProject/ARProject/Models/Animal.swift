//
//  Animal.swift
//  ARProject
//
//  Created by Niels Boerkamp on 20/11/2017.
//  Copyright © 2017 Niels Boerkamp. All rights reserved.
//

class Animal {
    
    //MARK: Properties
    var name:String = "Unnamed"
    var health:Float = 100
    var hunger:Float = 0
    var thirst:Float = 0
    
    //MARK: Constants
    let hungerRate:Float = 0.01
    let hungerInterval:Float = 10.0
    
    let thirstInterval:Float = 7.5
    let thirstRate:Float = 0.01

    
    // description acts like a toString method.
    var description:String {return "This is an animal called \(self.name)" }
    
    init(name:String) {
        self.name = name
    }
    
    //MARK: Functions
    func Feed(nutritionValue:Float){
        if(nutritionValue < 0){
            return
        }
        
        self.hunger -= nutritionValue
    }
    
    func Drink(hidratationValue:Float) {
        if(hidratationValue < 0) {
            return
        }
        
        self.thirst -= hidratationValue
    }
}
