//
//  ViewController.swift
//  IntroToiOS
//
//  Created by Sam DuBois on 10/16/19.
//  Copyright © 2019 SamDuBois. All rights reserved.
//

import UIKit

class AuthenticationVC: UIViewController {
    @IBOutlet weak var usernameTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var signInButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Change sign in button corner radius to 5
        signInButton.layer.cornerRadius = 5
        
    }
    
    @IBAction func signInButtonPressed(_ sender: Any) {
        
        let username = usernameTxtField.text!
        let password = passwordTxtField.text!
        
        if findUser(username: username, password: password) {
            print("Success")
        } else {
            let alert = UIAlertController(title: "Authentication", message: "Sorry, your credentials were incorrect", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("Credentials failed")
            }))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func findUser(username: String, password: String) -> Bool {
        for user in users {
            if username == user.username && password == user.password {
                return true
            }
        }
        return false
    }
}

