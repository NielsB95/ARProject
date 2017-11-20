//
//  AnimalLogic.swift
//  ARProject
//
//  Created by Niels Boerkamp on 20/11/2017.
//  Copyright © 2017 Niels Boerkamp. All rights reserved.
//

import Foundation

class AnimalLogic {
    class func TimeTillCriticalHungerLevel(animal:Animal) -> Float {
        let tillCritical = animal.hungerCritical - animal.hunger
        
        if(tillCritical < 0) {
            return 0
        }
        
        return (tillCritical / animal.hungerRate) * animal.hungerInterval
    }
    
    class func TimeTillCriticalThirstLevel(animal:Animal) -> Float {
        let tillCritical = animal.thirstCritical - animal.thirst
        
        if(tillCritical < 0){
            return 0
        }
    
        return (tillCritical / animal.thirstRate) * animal.thirstInterval
    }
}
