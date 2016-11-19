//
//  TabBarControler.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Miti Shah on 11/18/16.
//  Copyright © 2016 Miti Shah. All rights reserved.
//

import UIKit

class TabBarController: UIViewController {
    
    // Mark: Properties
    @IBOutlet weak var sliderOutlet: UISlider!
    
    @IBOutlet weak var stepperOutlet: UIStepper!
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        
//        self.view.backgroundColor = .blue
//        labelOutlet.backgroundColor = .red
//
////                textFieldOutlet.delegate = self
//                labelOutlet.text = "Default Text"
//                sliderOutlet.value = 0
//                stepperOutlet.value = 0
//        
//        
//        

    }
    
    
    
    // Mark: Actions
    
    @IBAction func sliderAction(_ sender: UISlider) {
        stepperOutlet.value = Double(sliderOutlet.value)
        labelOutlet.text = "\(sliderOutlet.value)"
        textFieldOutlet.text = "\(sliderOutlet.value)"
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        
        sliderOutlet.value = Float(stepperOutlet.value)
        labelOutlet.text = "\(stepperOutlet.value)"
        textFieldOutlet.text = "\(stepperOutlet.value)"
        
    }
    
    
//    func textFieldReturn (_ textfield: UITextField) -> Bool {
//        
//        labelOutlet.text = textFieldOutlet.text
//        
//        textFieldOutlet.resignFirstResponder()
//        
//        return true
    
        
        //        func textFieldSReturn (_ textfield: UITextField) -> Bool {
        //            if let textFieldOutlet
        //            labelOutlet.text = textFieldOutlet.text
        //
        //            sliderOutlet.value = Float(textFieldOutlet.text!)
        //            stepperOutlet.value = textFieldOutlet.text
        //            return true
        //
        //        }
//        //
//        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//            if let textFieldText = textField.text, let float = Float(textFieldText), let double = Double(textFieldText) {
//                    
//                    
//                    sliderOutlet.value = float
//                    stepperOutlet.value = double
//                    labelOutlet.text = textFieldText
//                   
//                }
//                
//                  return true
//                
//                
//            }
//            
    
        }
    
    
