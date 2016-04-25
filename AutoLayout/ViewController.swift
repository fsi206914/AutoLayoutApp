//
//  ViewController.swift
//  AutoLayout
//
//  Created by Liang Tang on 4/24/16.
//  Copyright © 2016 Tinker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginField: UITextField!

    @IBOutlet weak var passwordField: UITextField!

    @IBOutlet weak var passwordLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI();
    }
    
    var secure: Bool = false { didSet { updateUI() } } 
    
    var loggedInUser: User? { didSet { updateUI() } }

    
    @IBAction func login() {
        loggedInUser = User.login(loginField.text ?? "", password: passwordField.text ?? "")
    }
    
    private func updateUI(){
        passwordField.secureTextEntry = secure;
        if secure {
            passwordLabel.text = "Secure Password";
        }
        else {
            passwordLabel.text = "Password";
        }
    }
    
    
    @IBAction func toggleSecurity(sender: AnyObject) {
        secure = !secure;
    }
}

