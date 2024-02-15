//
//  LoginViewController.swift
//  local directory assignment
//
//  Created by Promact on 12/02/24.
//

import UIKit


class LoginViewController: UIViewController {
    
    @IBOutlet weak var userEmail: UITextField!
    
    @IBOutlet weak var userPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func showAlertForInvalidInput(textField: String) {
        let alert = UIAlertController(title: "Invalid \(textField)", message: "Please enter a valid \(textField).", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }


    

    @IBAction func performLogin(_ sender: Any) {
        
        if userEmail.text?.isEmpty ?? true {
            showAlertForInvalidInput(textField: "Email")
        }
        
        if userPassword.text?.isEmpty ?? true {
            showAlertForInvalidInput(textField: "Password")
        }
        
        if !Validator.isValidEmail(userEmail.text!) {
            showAlertForInvalidInput(textField: "Email")
            return
        }
            
        if !Validator.isValidPassword(userPassword.text!) {
            showAlertForInvalidInput(textField: "Password")
            return
        }
        
        performSegue(withIdentifier: "ToPersonalDetailsViewController", sender: nil)
    }
    

}


struct Validator {
    static func isValidEmail(_ email: String) -> Bool {
        let emailRegex = #"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"#
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: email)
    }

    static func isValidPassword(_ password: String) -> Bool {
        let passwordRegex = #"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"#
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: password)
    }
}
