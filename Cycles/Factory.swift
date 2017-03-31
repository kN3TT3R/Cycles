//
//  Factory.swift
//  Cycles
//
//  Created by kN3TT3R on 17/03/17.
//  Copyright © 2017 Kenneth Debruyn. All rights reserved.
//

import Foundation

class Factory {
    
    private class func createBicycle() -> Bicycle {
        let bicycle = Bicycle(named: "bicycle", withNumberOfWheels: 2, andImageName: "bike")
        bicycle.addBasket(Basket(color: "blue", volume: 55))
        return bicycle
    }
    
    private class func createTricycle() -> Tricycle {
        return Tricycle(named: "tricycle", andMadeForAdults: false, withImageName: "tricycle")
    }
    
    private class func createTandem() -> Tandem {
        return Tandem(named: "tandem", withNumberOfWheels: 2, andImageName: "tandem")
    }
    
    class func createRandomCycles(amount: Int) -> [Cycle] {
        var array : [Cycle] = []
        for _ in 1...amount {
            guard let newCycle = createRandomCycle() else {
                print("Someting went wrong in your cycle initialisation")
                continue
            }
            array.append(newCycle)
        }
        return array
    }
    
    class func createRandomCycle() -> Cycle? {
        let randomNumber = Int(arc4random_uniform(3))
        switch randomNumber {
        case 0: return createBicycle()
        case 1: return createTricycle()
        case 2: return createTandem()
        default: break
        }
        return nil
    }
    
}





