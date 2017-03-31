//
//  ViewController.swift
//  Cycles
//
//  Created by kN3TT3R on 16/03/17.
//  Copyright © 2017 Kenneth Debruyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var cycleImageView: UIImageView!
    
    // MARK: - Global variables
    lazy var cycles = Factory.createRandomCycles(amount: 1)
    var currentCycle: Cycle?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }

    // MARK: - IBActions
    @IBAction func showNextCycle(_ sender: UIBarButtonItem) {
        cycles.removeFirst()
        guard let newCycle = Factory.createRandomCycle() else {
            print("Something went wrong here")
            return
        }
        cycles.append(newCycle)
        updateView()
    }

    // MARK: - Custom Functions
    func updateView() {
        self.currentCycle = self.cycles.first
        guard let cycle = currentCycle else {
            descriptionTextView.text = "This is a cycle"
            cycleImageView.image = UIImage(named: "cycle")
            return
        }
        descriptionTextView.text = cycle.description
        cycleImageView.image = UIImage(named: cycle.imageName!)
    }
    
}

