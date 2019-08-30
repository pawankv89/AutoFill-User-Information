# Autofill-OTP

## AutoFill-User-Information . 

Added Some screens here.

![](https://github.com/pawankv89/AutoFill-User-Information/blob/master/images/screen_1.PNG)
![](https://github.com/pawankv89/AutoFill-User-Information/blob/master/images/screen_2.PNG)
![](https://github.com/pawankv89/AutoFill-User-Information/blob/master/images/screen_3.PNG)
![](https://github.com/pawankv89/AutoFill-User-Information/blob/master/images/screen_4.PNG)
![](https://github.com/pawankv89/AutoFill-User-Information/blob/master/images/screen_5.PNG)
![](https://github.com/pawankv89/AutoFill-User-Information/blob/master/images/screen_6.PNG)

## Usage

### AutoFill-User-Information must your message contains "code", "otp" this type of keyword. 

``` swift 


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



```

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each this release can be found in the [CHANGELOG](CHANGELOG.mdown). 
