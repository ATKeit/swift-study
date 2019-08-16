//
//  ViewController.swift
//  Navigation
//
//  Created by B.Cheolu on 16/08/2019.
//  Copyright © 2019 B.Cheolu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, EditDelegate {
    @IBOutlet var txtMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewContoller = segue.destination as! EditViewController
        if segue.identifier == "editButton" {
            editViewContoller.textWayValue = "segue : use button"
        } else if segue.identifier == "editBarButton" {
            editViewContoller.textWayValue = "segue : use bar button"
        }
        editViewContoller.textMessage = txtMessage.text!
        editViewContoller.delegate = self
    }
    
    func didMessageEditDone(_ contoller: EditViewController, message: String) {
        txtMessage.text = message
    }
}

