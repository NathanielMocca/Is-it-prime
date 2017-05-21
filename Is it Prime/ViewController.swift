//
//  ViewController.swift
//  Is it Prime
//
//  Created by Mocca Yang on 2017/5/20.
//  Copyright © 2017年 Appmocca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var isPrime = true
    @IBOutlet weak var numberInputTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func IsPrimeButton(_ sender: Any) {
        
        
        if Int(numberInputTextField.text!) != nil {
            
            isPrime = true
            
            let number = Int(numberInputTextField.text!)
            
            if number == 1 { isPrime = false }
            
            var i = 2
            
            //number == 2 will not enter while loop.
            while i < number! {
                
                if number! % i == 0 {
                    
                    isPrime = false
                    break
                    
                }
                isPrime = true

                i = i + 1
                
            }
            print(isPrime)
            
            if isPrime{
            
                resultLabel.text = numberInputTextField.text! + " is a prime!"
                
            }else{
                
                resultLabel.text = numberInputTextField.text! + " is not a prime!"
                
            }
            
        }else{
            print("invalid input.")
            resultLabel.text = "Please Enter a positive whole number."
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

