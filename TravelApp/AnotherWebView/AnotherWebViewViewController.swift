//
//  AnotherWebViewViewController.swift
//  TravelApp
//
//  Created by EthanLin on 2018/1/5.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit
import WebKit

class AnotherWebViewViewController: UIViewController {
    
    
    //點按前一個畫面AnotherTableView中的button會連接到不同的網站
    var webAddressFromAnotherTableView:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //用程式碼開始生成一個WKWebView
        //先訂出範圍
        let wkWebViewRange = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        
        //實體化一個WKWebView
        let webView = WKWebView(frame: wkWebViewRange)
        
        //加到畫面上
        self.view.addSubview(webView)
        
        if let url = URL(string:webAddressFromAnotherTableView!){
            let myRequest = URLRequest(url: url)
            webView.load(myRequest)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
