//
//  EntranceViewController.swift
//  LoginApp
//
//  Created by Денис Александров on 25.04.2024.
//

import UIKit

class EntranceViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    
    var userName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        
        let startColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 0.5).cgColor
        let endColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 0.5).cgColor
        
        gradientLayer.colors = [startColor, endColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        if let userName = userName {
            greetingLabel.text = "Привет, \(userName)!"
        }
    }
    
    @IBAction func cancelButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
