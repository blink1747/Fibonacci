//
//  ViewController.swift
//  Fibonacci
//
//  Created by Sujeet Poudel on 8/4/19.
//  Copyright © 2019 Sujeet Poudel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBAction func checkButton(_ sender: Any) {
        let a = textField.text!
        let input = Int(a)
        
        var x = -1
        var y = 1
        var sum = 0
        var fibonacci = [Int] ()
        while sum < 100 {
            sum = x + y
            x = y
            y = sum
            fibonacci.append(sum)
        }
        if fibonacci.contains(input!) {
            outputLabel.text = "Present"
        } else {
            outputLabel.text = "Not Present"
        }
    
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view, typically from a nib.
    }


}

