//
//  ViewController.swift
//  Login Scren App
//
//  Created by Yuriy Martinovskiy on 26.05.2021.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func loginTappedButton(_ sender: UIButton) {
        
    }
    
    @IBAction func forgotUNTappedButton(_ sender: UIButton) {
    }
    
    @IBAction func forgotPassTappedButton(_ sender: UIButton) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let destinationViewController = segue.destination as? WelcomeViewController else { return }
        destinationViewController.userName = userNameTextField.text
    }
}

