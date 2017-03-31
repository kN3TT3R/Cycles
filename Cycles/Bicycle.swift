//
//  Bicycle.swift
//  Cycles
//
//  Created by kN3TT3R on 16/03/17.
//  Copyright © 2017 Kenneth Debruyn. All rights reserved.
//

import Foundation

class Bicycle: Cycle {
    
    private var basket: Basket?
    
    final override var description: String {
        guard let basket = basket else {
            return "\(super.description)\nOur bicycle hasn't got a basket"
        }
        return "\(super.description)\nOur bicycle has got a \(basket.color) color"
    }
    
    convenience init(named name: String?, withNumberOfWheels numberOfWheels: Int, imageName: String?, andBasket basket: Basket?) {
        self.init(named: nil, withNumberOfWheels: 2, andImageName: imageName)
        self.basket = basket
    }
    
    convenience init(withBasket basket: Basket?) {
        self.init(named: nil, withNumberOfWheels: 2, andImageName: nil)
        self.basket = basket
    }
    
    func addBasket(_ basket: Basket) {
        self.basket = basket
    }
    
    func removeBasket() {
        self.basket = nil
    }
    
    override func makeSound() {
        super.makeSound()
        print("Ring Ring")
    }
    
}
