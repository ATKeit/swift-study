//
//  ViewController.swift
//  WebView
//
//  Created by B.Cheolu on 15/08/2019.
//  Copyright © 2019 B.Cheolu. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    @IBOutlet var txtUrl: UITextField!
    @IBOutlet var webView: WKWebView!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadWebPage("https://google.com")
    }
    
    func loadWebPage(_ url: String) {
        let _url = URL(string: url)
        let _request = URLRequest(url: _url!)
        webView.load(_request)
        
        webView.addObserver(self, forKeyPath: #keyPath(WKWebView.isLoading), options: .new, context: nil)
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "loading" {
            if webView.isLoading {
                activityIndicator.startAnimating()
                activityIndicator.isHidden = false
            } else {
                activityIndicator.stopAnimating()
                activityIndicator.isHidden = true
            }
        }
    }
    
    func checkURL(_ url : String) -> String {
        var strUrl = url
        let flag = strUrl.hasPrefix("https://") || strUrl.hasPrefix("http://")
        if !flag {
            strUrl = "https://" + strUrl
        }
        return strUrl
    }

    @IBAction func btnGoUrl(_ sender: UIButton) {
        let _url = checkURL(txtUrl.text!)
        txtUrl.text = ""
        loadWebPage(_url)
    }
    
    @IBAction func btnGoSite1(_ sender: UIButton) {
        loadWebPage("https://naver.com");
    }
    
    @IBAction func btnGoSite2(_ sender: UIButton) {
        loadWebPage("https://daum.net");
    }
    
    @IBAction func btnLoadHtmlString(_ sender: UIButton) {
        let htmlString = "<h1>Hello this is HTML String</h1><p>Show WebView sith HTML String.</p><p><a href='https://e.kakao.com'>Go kakao emoticon.</a></p>"
        webView.loadHTMLString(htmlString, baseURL: nil)
    }
    
    @IBAction func btnLoadHtmlFile(_ sender: UIButton) {
        let filePath = Bundle.main.path(forResource: "htmlView", ofType: "html")
        let _url = URL(fileURLWithPath: filePath!)
        let _request = URLRequest(url: _url)
        webView.load(_request)
    }
    
    @IBAction func btnStop(_ sender: UIBarButtonItem) {
        webView.stopLoading()
    }
    
    @IBAction func btnRefresh(_ sender: UIBarButtonItem) {
        webView.reload()
    }
    
    @IBAction func btnGoBack(_ sender: UIBarButtonItem) {
        webView.goBack()
    }
    
    @IBAction func btnGoForward(_ sender: UIBarButtonItem) {
        webView.goForward()
    }
    
    
    
}

