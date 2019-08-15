//
//  ViewController.swift
//  PageControl
//
//  Created by B.Cheolu on 15/08/2019.
//  Copyright © 2019 B.Cheolu. All rights reserved.
//

import UIKit

var images = [
    "mixed rice.jpg",
    "nudle.jpg",
    "roast meat.jpg",
    "sashimi.jpg",
    "steak.jpg",
    "sushi.jpg"
]

class ViewController: UIViewController {
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
        imgView.image = UIImage(named: images[0])
    }


    @IBAction func pageChange(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
}

