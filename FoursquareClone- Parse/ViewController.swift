//
//  ViewController.swift
//  FoursquareClone- Parse
//
//  Created by Ömer Faruk Kılıçaslan on 2.07.2022.
//

import UIKit
import Parse

class ViewController: UIViewController {

    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var usernameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    
        
        
        
    }
    @IBAction func signInClicked(_ sender: Any) {
        
        
        
    }
    
    @IBAction func signUpClicked(_ sender: Any) {
        
        if usernameText.text != "" && passwordText.text != "" {
            
            //creating User
            
            let user = PFUser()
            user.username = usernameText.text!
            user.password = passwordText.text!
            
            user.signUpInBackground { success, error in
                
                if error != nil {
                    self.makeAlert(title: "Error", message: error?.localizedDescription ?? "Error")
                }
                else{
                    //Segue
                    print("OK")
                }
            }
            
        }
        else{
            makeAlert(title: "Error", message: "Username/Password")
        }
        
    }
    
}

extension ViewController {
    
    func makeAlert(title:String, message:String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}
