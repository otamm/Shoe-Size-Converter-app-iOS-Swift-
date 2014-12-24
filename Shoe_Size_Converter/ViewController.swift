//
//  ViewController.swift
//  Shoe_Size_Converter
//
//  Created by Otavio Monteagudo on 12/12/14.
//  Copyright (c) 2014 Otavio Monteagudo. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var inputSizeMen: UITextField!
    
    @IBOutlet weak var menConvertedSize: UILabel!
    
    @IBOutlet weak var inputSizeWomen: UITextField!
    
    @IBOutlet weak var womenConvertedSize: UILabel!
    
    // auto functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //custom functions
    
    @IBAction func convertedMenShoeSizePressed(sender: UIButton) {
        let sizeTextField = inputSizeMen.text.toInt()! + 30
        //this captures the "text" value of the object inside a constant. It converts the value to Integer (the "!" is used to store "nil" in case the value cannot be converted toInt()) and adds the constant converter (+ 30) to change it to an European shoe size.
   //     if (sizeTextField == Int()) {
            menConvertedSize.text = "\(sizeTextField)" + " in European shoe size."
            menConvertedSize.hidden = false
    /*    } else {
            var alert_button = UIAlertView()
            alert_button.title = "..."
            alert_button.message = "I said WHOLE number"
            alert_button.addButtonWithTitle("Bazomgna xD")
            alert_button.show()
        } */
    }
    
    @IBAction func convertedWomenShoeSizePressed(sender: UIButton) {
        let sizeTextField = Double((inputSizeWomen.text as NSString).doubleValue) //the way to convert a string using some Obj-C techniques and THEN converting it to a proper Swift Double.
        // same as "sizeTextField",but converting to a Double/Float.
        let conversionConstant = 30.5
        // documentation for NSString:
        //  "The NSString class declares the programmatic interface for an object that manages immutable strings. An immutable string is a text string that is defined when it is created and subsequently cannot be changed. NSString is implemented to represent an array of Unicode characters, in other words, a text string."
        
       // if (sizeTextField == Double()) {
            womenConvertedSize.text = "\(sizeTextField + conversionConstant)" + " in European shoe size."
            womenConvertedSize.hidden = false
  /*      } else {
            var alert_button = UIAlertView()
            alert_button.title = "..."
            alert_button.message = "I said WHOLE number"
            alert_button.addButtonWithTitle("Bazomgna xD")
            alert_button.show()
        } */
    }
}