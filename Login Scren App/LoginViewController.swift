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
    
    func alertWindow(Title title: String, Message message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }

    @IBAction func loginTappedButton(_ sender: UIButton) {
        if userNameTextField.text == "User" && passwordTextField.text == "Password" {
            performSegue(withIdentifier: "toWelcomeSegue", sender: nil)
        } else {
            alertWindow(Title: "Invalid Login or Password", Message: "Please, enter correct login and password!")
        }
        
    }
    
    @IBAction func forgotUNTappedButton(_ sender: UIButton) {
        alertWindow(Title: "Hint", Message: "You user name is User")
      
    }
    
    @IBAction func forgotPassTappedButton(_ sender: UIButton) {
        alertWindow(Title: "Hint", Message: "You password is Password")
    }
    
    @IBAction func unwindSegueToLoginScreen(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindSegue" else { return }
        guard segue.source is WelcomeViewController else { return }
        
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let destinationViewController = segue.destination as? WelcomeViewController else { return }
        destinationViewController.userName = userNameTextField.text
    }
}

