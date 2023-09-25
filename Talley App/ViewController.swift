//
//  ViewController.swift
//  Talley App
//
//  Created by Dax Gerber on 9/25/23.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var incrementAmountLabel: UILabel!
    @IBOutlet weak var incrementValueLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    let colorArray: [UIColor] = [.red, .green, .blue, .yellow, .cyan, .purple, .black, .white, .magenta]
    
    var currentAmountToAdd = 1 {
        didSet {
            incrementAmountLabel.text = String(currentAmountToAdd)
        }
    }
    var currentCount = 0 {
        didSet {
            incrementValueLabel.text = String(currentCount)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentCount = 0
        currentAmountToAdd = 1
    }

    @IBAction func incrementThisSucker(_ sender: UIButton) {
        increment()
    }
    
    @IBAction func decrement(_ sender: UIButton) {
        decrement()
    }
    
    @IBAction func valueChanged(_ sender: Any) {
        currentAmountToAdd = Int(stepper.value)
    }
    
    func increment() {
        currentCount += currentAmountToAdd
        view.backgroundColor = colorArray.randomElement()
    }
    
    func decrement() {
        currentCount -= currentAmountToAdd
        view.backgroundColor = colorArray.randomElement()
    }
    
}
