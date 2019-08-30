//
//  ViewController.swift
//  Autofill OTP
//
//  Created by Pawan kumar on 23/07/19.
//  Copyright © 2019 Pawan Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
   
    @IBOutlet weak var fullNameTextField: UITextField!
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var mobileNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameTextField.delegate = self
        if #available(iOS 10.0, *) {
            fullNameTextField.textContentType = .name
        } else {
            // Fallback on earlier versions
        }
        
        firstNameTextField.delegate = self
        if #available(iOS 10.0, *) {
            firstNameTextField.textContentType = .givenName
        } else {
            // Fallback on earlier versions
        }
        
        lastNameTextField.delegate = self
        if #available(iOS 10.0, *) {
            lastNameTextField.textContentType = .familyName
        } else {
            // Fallback on earlier versions
        }
        
        mobileNumberTextField.delegate = self
        if #available(iOS 10.0, *) {
            mobileNumberTextField.textContentType = .telephoneNumber
        } else {
            // Fallback on earlier versions
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        fullNameTextField.resignFirstResponder()
        firstNameTextField.resignFirstResponder()
        lastNameTextField.resignFirstResponder()
        mobileNumberTextField.resignFirstResponder()
        return true
    }
}

