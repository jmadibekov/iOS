//
//  ViewController.swift
//  IBBasics
//
//  Created by Nurbakyt on 23.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var myButton: UIButton!
    
    @IBAction func buttonPressed(_ sender: Any) {
        print("The button was pressed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myButton.tintColor = .red
    }


}

