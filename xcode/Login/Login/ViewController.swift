//
//  ViewController.swift
//  Login
//
//  Created by Nurbakyt on 03.05.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var usernameTextField: UITextField!
    
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBAction func pressUserNameButton(_ sender: Any) {
        performSegue(withIdentifier: "MainSegue", sender: sender)
    }
    
    @IBOutlet var forgotPasswordButton: UIButton!
    @IBAction func pressPasswordButton(_ sender: Any) {
        performSegue(withIdentifier: "MainSegue", sender: sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {
            return
        }
        
        if let _ = segue.identifier {
            // this is "MainSegue"
            
            if sender == forgotUserNameButton {
                segue.destination.navigationItem.title = "Forgot Username"
                segue.destination.view.backgroundColor = .brown
            } else if sender == forgotPasswordButton {
                segue.destination.navigationItem.title = "Forgot Password"
                segue.destination.view.backgroundColor = .cyan
            }
        } else {
            segue.destination.navigationItem.title = "Welcome, \(usernameTextField.text ?? "someone")!"
        }
    }
}

