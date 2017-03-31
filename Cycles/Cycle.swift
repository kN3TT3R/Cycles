//
//  Cycle.swift
//  Cycles
//
//  Created by kN3TT3R on 16/03/17.
//  Copyright © 2017 Kenneth Debruyn. All rights reserved.
//

import Foundation

class Cycle: CustomStringConvertible {
    
    var name: String?
    let numberOfWheels: Int
    var imageName: String?
    
    var description: String {
        return "This cycle has \(numberOfWheels) wheels"
    }
    
    init(named name: String?, withNumberOfWheels numberOfWheels: Int, andImageName imageName: String?) {
        self.name = name
        self.numberOfWheels = numberOfWheels
        self.imageName = imageName
    }
    
    convenience init(withNumberOfWheels numberOfWheels: Int) {
        self.init(named: nil, withNumberOfWheels: numberOfWheels, andImageName: nil)
    }
    
    func makeSound() {
        print("Rolling")
    }
    
    func claxon() {
        print("Claxoning")
    }
    
}
