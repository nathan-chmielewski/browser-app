//
//  ViewController.swift
//  DocumentBrowserApp
//
//  Created by Nathan Chmielewski on 12/5/20.
//

import Cocoa
import WebKit

class ViewController: NSViewController, WKNavigationDelegate {

    @IBOutlet weak var webView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        webView.navigationDelegate = self
        webView.load(URLRequest(url: URL(string: "https://www.apple.com")!))

    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func goBack(_ sender: Any) {
        webView.goBack()
    }

    @IBAction func urlEntered(_ textField: NSTextField) {
        guard textField.stringValue != "" else {
            return
        }
        
        var urlString = textField.stringValue

        if !urlString.contains("://") {
            if urlString.contains("localhost") || urlString.contains("127.0.0.1") {
                urlString = "http://" + urlString
            } else {
                urlString = "https://" + urlString
            }
        }

        if webView.url?.absoluteString == urlString {
            return
        }

        if let targetURL = URL(string: urlString) {
            webView.load(URLRequest(url: targetURL))
        }
    }

}

