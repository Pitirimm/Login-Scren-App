//
//  WelcomeViewController.swift
//  Login Scren App
//
//  Created by Yuriy Martinovskiy on 26.05.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var welcomeTextField: UILabel!
    
    var userName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let userName = self.userName else { return }
        welcomeTextField.text = "Welcome, \(userName)!"

    }
    
    @IBAction func logoutTappedButton(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
    
}
