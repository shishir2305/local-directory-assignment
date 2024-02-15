//
//  PersonalDetailsViewController.swift
//  local directory assignment
//
//  Created by Promact on 12/02/24.
//

import UIKit

class PersonalDetailsViewController: UIViewController {
    
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var address: UITextField!
    
    @IBOutlet weak var phoneNumber: UITextField!
    
    @IBOutlet weak var occupation: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func submitPersonalDetails(_ sender: Any) {
        
        let detailsDictionary: [String: String] = [
            "name" : name.text ?? "",
            "age" : age.text ?? "",
            "email" : email.text ?? "",
            "address" : address.text ?? "",
            "phoneNumber" : phoneNumber.text ?? "",
            "occupation" : occupation.text ?? ""
        ]
        
        performSegue(withIdentifier: "ToDisplayDetailsViewController", sender: detailsDictionary)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! DisplayDetailsViewController
        destVC.detailsDictionary = (sender as! [String:String])
    }
    
}
