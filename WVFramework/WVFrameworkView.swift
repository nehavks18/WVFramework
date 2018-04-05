//
//  WVFrameworkView.swift
//  WVFramework
//
//  Created by Neha on 4/5/18.
//  Copyright © 2018 Neha. All rights reserved.
//

import UIKit

public class WVFrameworkView: UIView {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.commomInitialization()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commomInitialization()
    }
    
    public func commomInitialization()
    {
        let webV    = UIWebView()
        webV.frame  = CGRect(x: 0, y: 44, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        webV.loadRequest(NSURLRequest(url: NSURL(string: "https://in.yahoo.com/?p=us")! as URL) as URLRequest)
        webV.delegate = self as? UIWebViewDelegate
        self.addSubview(webV)
        
       
        }
    
    public func showData()
    {
        let screenSize: CGRect = UIScreen.main.bounds
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: screenSize.width, height: 44))
        let navItem = UINavigationItem(title: "WebViewApp")
        //  let doneItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: nil, action: #selector(done))
        //  navItem.rightBarButtonItem = doneItem
        navBar.setItems([navItem], animated: false)
        //self.view.addSubview(navBar)
        self.addSubview(navBar)
    }

}
