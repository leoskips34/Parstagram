//
//  LoginViewController.swift
//  
//
//  Created by Leo Samuelson on 2/17/20.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSignIn(_ sender: Any) {
        let username = userNameField.text!
        let password = passwordField.text!
        
        PFUser.logInWithUsername(inBackground: username, password: password) { (user, error) in
            if user != nil {
                self.performSegue(withIdentifier: "loginSegue", sender: nil )
            } else {
                print("Login Error: \(String(describing: error?.localizedDescription))")
            }
        }
    }
    
    
    @IBAction func onSIgnUp(_ sender: Any) {
        let user = PFUser()
               user.username = userNameField.text
               user.password = passwordField.text
               
               user.signUpInBackground { (success, error) in
                   if success {
                       self.performSegue(withIdentifier: "loginSegue", sender: nil)
                   } else {
                       print("Signup Error: \(String(describing: error?.localizedDescription))")
                   }
               }

           }
        
    }
