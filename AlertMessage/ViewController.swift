//
//  ViewController.swift
//  AlertMessage
//
//  Created by testinium on 13.09.2020.
//  Copyright © 2020 testinium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var userNameText = ""
    var passwordText = ""
    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var passwordAgain: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func signUpButton(_ sender: Any) {
        
        if (userName.text == userNameText){
           makeAlert(alertTitle: "Error!", alertMessage: "Please Enter a UserName")
        }else if(password.text == passwordText){
            makeAlert(alertTitle: "Error!", alertMessage: "Please Enter a Password")
        }else if (password.text != passwordAgain.text){
            makeAlert(alertTitle: "Error!", alertMessage: "First and Second Passwords Must be Equal :)")
        }else{
            makeAlert(alertTitle: "Success", alertMessage: ":D")
        }
    }
    
    func makeAlert(alertTitle: String, alertMessage: String){
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: UIAlertController.Style.alert)
                       
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                           (UIAlertAction) in print("OK button clicked")
            }
                       
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
    }
        
}

