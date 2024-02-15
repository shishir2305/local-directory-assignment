//
//  DisplayDetailsViewController.swift
//  local directory assignment
//
//  Created by Promact on 12/02/24.
//

import UIKit

class DisplayDetailsViewController: UIViewController {

    var detailsDictionary: [String: String]?
    
    @IBOutlet weak var userName: UILabel!
    
    @IBOutlet weak var userAge: UILabel!
    
    @IBOutlet weak var userEmail: UILabel!
    
    @IBOutlet weak var userAddress: UILabel!
    
    @IBOutlet weak var userPhoneNumber: UILabel!
    
    @IBOutlet weak var userOccupation: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showFilledDetails()
    }
    
    func showFilledDetails() {
        if let detailsDictionary = detailsDictionary {
                    userName.text = detailsDictionary["name"]
                    userAge.text = detailsDictionary["age"]
                    userEmail.text = detailsDictionary["email"]
                    userAddress.text = detailsDictionary["address"]
                    userPhoneNumber.text = detailsDictionary["phoneNumber"]
                    userOccupation.text = detailsDictionary["occupation"]
        }
    }
    
}
