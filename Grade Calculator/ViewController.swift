//
//  ViewController.swift
//  Grade Calculator
//
//  Created by Ruben Rojo on 10/11/21.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var finalAnswer: UILabel!
    

    @IBOutlet weak var currentGrade: UITextField!
    
    @IBOutlet weak var desiredGrade: UITextField!
    
    @IBOutlet weak var finalGrade: UITextField!
    
    var current = ""
    var current1 = 0.0
    
    var desired = ""
    var desired1 = 0.0
    
    var final = ""
    var final1 = 0.0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    
    @IBAction func Button(_ sender: Any)
    {
        current = currentGrade.text ?? "0.0"
        
        current1 = Double(current) ?? 0.0
        
        desired = desiredGrade.text ?? "0.0"
        
        desired1 = Double(desired) ?? 0.0
        
        final = finalGrade.text ?? "0.0"
    
        final1 = Double(final) ?? 0.0
        
        var F = (desired1-current1*(1.0-final1/100))/(final1/100)
        finalAnswer.text = "\(F)" 
    }
    


    
    
    
}

