//
//  ViewController.swift
//  LoginApp
//
//  Created by Денис Александров on 25.04.2024.
//

import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func UserNameAction(_ sender: UIButton) {
        let alert = UIAlertController(title: "Oops!", message: "Your name is Bond", preferredStyle: .alert)
        let completed = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(completed)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func UserPasswordAction(_ sender: UIButton) {
        let alert = UIAlertController(title: "Oops!", message: "Your password is 007", preferredStyle: .alert)
        let completed = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(completed)
        
        present(alert, animated: true, completion: nil)
    }
}

