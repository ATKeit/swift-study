//
//  ViewController.swift
//  TabBar
//
//  Created by B.Cheolu on 15/08/2019.
//  Copyright © 2019 B.Cheolu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }


    @IBAction func goMapView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
    
    
    @IBAction func goWebView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    }
}

