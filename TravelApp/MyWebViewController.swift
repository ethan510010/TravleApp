//
//  MyWebViewController.swift
//  TravelApp
//
//  Created by EthanLin on 2018/1/2.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

class MyWebViewController: UIViewController {

    var urlFromViewOne:String?
    
    @IBOutlet weak var myWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: urlFromViewOne!){
            let request = URLRequest(url: url)
            myWebView.loadRequest(request)
        }
        
        // Do any additional setup after loading the view.
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
