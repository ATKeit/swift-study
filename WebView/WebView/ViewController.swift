//
//  ViewController.swift
//  WebView
//
//  Created by B.Cheolu on 15/08/2019.
//  Copyright © 2019 B.Cheolu. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet var txtUrl: UITextField!
    @IBOutlet var webView: WKWebView!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadWebPage("http://google.com")
        
    }
    
    func loadWebPage(_ url: String) {
        let _url = URL(string: url)
        let _request = URLRequest(url: _url!)
        webView.load(_request)
    }

    @IBAction func btnGoUrl(_ sender: UIButton) {
    }
    
    @IBAction func btnGoSite1(_ sender: UIButton) {
    }
    
    @IBAction func btnGoSite2(_ sender: UIButton) {
    }
    
    @IBAction func btnLoadHtmlString(_ sender: UIButton) {
    }
    
    @IBAction func btnLoadHtmlFile(_ sender: UIButton) {
    }
    
    @IBAction func btnStop(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func btnRefresh(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func btnGoBack(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func btnGoForward(_ sender: UIBarButtonItem) {
    }
    
    
    
}

