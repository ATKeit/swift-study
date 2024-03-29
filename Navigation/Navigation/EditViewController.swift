//
//  EditViewController.swift
//  Navigation
//
//  Created by B.Cheolu on 16/08/2019.
//  Copyright © 2019 B.Cheolu. All rights reserved.
//

import UIKit

protocol EditDelegate {
    func didMessageEditDone(_ contoller: EditViewController, message: String)
}

class EditViewController: UIViewController {
    var textWayValue: String = ""
    var textMessage: String = ""
    var delegate: EditDelegate?
    
    @IBOutlet var lblWay: UILabel!
    @IBOutlet var txtMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        lblWay.text = textWayValue
        txtMessage.text = textMessage
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBAction func btnDone(_ sender: UIButton) {
        if delegate != nil {
            delegate?.didMessageEditDone(self, message: txtMessage.text!)
        }
        _ = navigationController?.popViewController(animated: true)
    }
}
