//
//  ViewController.swift
//  LoginApp
//
//  Created by Денис Александров on 25.04.2024.
//

import UIKit

final class MainViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func logInButton(_ sender: UIButton) {
        let inputName = nameTextField.text ?? ""
        let inputPassword = passwordTextField.text ?? ""
        
//        if isValidName(enteredName) && isValidPassword(enteredPassword) {
//            performSegue(withIdentifier: "loginSegue", sender: nil)
//        }
    }
    
    @IBAction func UserNameAction(_ sender: UIButton) {
        let alert = UIAlertController(title: "Oops!", message: "Your name is Bond😎", preferredStyle: .alert)
        let completed = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(completed)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func UserPasswordAction(_ sender: UIButton) {
        let alert = UIAlertController(title: "Oops!", message: "Your password is 007🤘", preferredStyle: .alert)
        let completed = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(completed)
        
        present(alert, animated: true, completion: nil)
    }
}

