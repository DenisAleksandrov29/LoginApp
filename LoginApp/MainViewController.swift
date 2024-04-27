//
//  ViewController.swift
//  LoginApp
//
//  Created by Денис Александров on 25.04.2024.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.isSecureTextEntry = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Очищаем поля ввода
        nameTextField.text = ""
        passwordTextField.text = ""
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EntranceViewController" {
            if let destinationVC = segue.destination as? EntranceViewController {
                destinationVC.userName = nameTextField.text
            }
        }
    }
    
    
    @IBAction func logInButton(_ sender: UIButton) {
        
        let username = nameTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        
        if isValidCredentials(username: username, password: password) {
            performSegue(withIdentifier: "EntranceViewController", sender: nil)
        } else {
            showErrorAlert()
        }
    }
    

    @IBAction func UserNameAction(_ sender: UIButton) {
        let alert = UIAlertController(
            title: "Oops!",
            message: "Your name is Bond😎",
            preferredStyle: .alert)
        
        let completed = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(completed)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func UserPasswordAction(_ sender: UIButton) {
        let alert = UIAlertController(
            title: "Oops!",
            message: "Your password is 007🤘",
            preferredStyle: .alert)
        let completed = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(completed)
        
        present(alert, animated: true, completion: nil)
    }
    
    func isValidCredentials(username: String, password: String) -> Bool {
        
        let validUsername = "d"
        let validPassword = "1"
        
        return username == validUsername && password == validPassword
    }

    func showErrorAlert() {
        let alert = UIAlertController(
            title: "Invalid login or password",
            message: "Please, enter correct login and password",
            preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            self.nameTextField.text = ""
            self.passwordTextField.text = ""
        }))
        present(alert, animated: true, completion: nil)
    }
}

     


