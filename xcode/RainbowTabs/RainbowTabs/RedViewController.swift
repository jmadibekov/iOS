//
//  ViewController.swift
//  RainbowTabs
//
//  Created by Nurbakyt on 04.05.2022.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarItem.badgeValue = "!"
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        tabBarItem.badgeValue = nil
    }
}

