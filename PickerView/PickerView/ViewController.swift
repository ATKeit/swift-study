//
//  ViewController.swift
//  PickerView
//
//  Created by B.Cheolu on 13/08/2019.
//  Copyright © 2019 B.Cheolu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var lblImageFileName: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    let MAX_NUM = 6
    let PICKER_VIEW_COLUMN = 1
    let PICKER_VIEW_HEIGHT: CGFloat = 80
    var imgArray = [UIImage?]()
    let imgFileName = [
        "mixed rice.jpg",
        "nudle.jpg",
        "roast meat.jpg",
        "sashimi.jpg",
        "steak.jpg",
        "sushi.jpg"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 0 ..< imgFileName.count {
            let img = UIImage(named: imgFileName[i])
            imgArray.append(img)
        }
        setImage(idx: 0)
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imgFileName.count
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return PICKER_VIEW_HEIGHT
    }
    
    /*
     *  picker view init text
     */
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return imgFileName[row]
//    }
    
    /*
     *  picker view init imageview
     */
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imgView = UIImageView(image: imgArray[row])
        imgView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        return imgView
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        setImage(idx: row)
    }
    
    func setImage(idx: Int) {
        lblImageFileName.text = imgFileName[idx]
        imageView.image = imgArray[idx]
    }
}

