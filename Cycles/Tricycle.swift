//
//  Tricycle.swift
//  Cycles
//
//  Created by kN3TT3R on 16/03/17.
//  Copyright © 2017 Kenneth Debruyn. All rights reserved.
//

import Foundation

class Tricycle: Cycle {
    
    private let madeForAdults: Bool
    
    override var description: String {
        if madeForAdults {
            return "\(super.description)\nThis tricycle is meant for adults"
        } else {
            return "\(super.description)\nThis tricycle is meant for adults"
        }
    }
    
    init(named name: String?, andMadeForAdults madeForAdults: Bool, withImageName imageName: String?) {
        self.madeForAdults = madeForAdults
        super.init(named: name, withNumberOfWheels: 3, andImageName: imageName)
    }
    
    convenience init() {
        self.init(named: nil, andMadeForAdults: false, withImageName: nil)
    }
    
    convenience init(named name: String) {
        self.init(named: name, andMadeForAdults: false, withImageName: nil)
    }
    
    override func makeSound() {
        super.makeSound()
        print("Squeek!")
    }
    
    func addImage(named imageName: String ) {
        super.imageName = imageName
    }
}
