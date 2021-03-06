//
//  MainTableViewController.swift
//  TravelApp
//
//  Created by EthanLin on 2017/12/29.
//  Copyright © 2017年 EthanLin. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController, TwoBigViewsDelegate, ThreeSmallViewsDelegate, OneBigViewOneSmallViewDelegate{
    
//    class func showWebView(url:String) {
//
//    }
    
    
     //建立URL資訊
    var urlArray = ["https://www.apple.com/tw/", "https://tw.yahoo.com","https://www.google.com.tw/?gfe_rd=cr&dcr=0&ei=AUlLWsTOGsqiX4XEueAB","https://hackmd.io","https://www.tripadvisor.com.tw","https://tw.openrice.com/zh/taipei","https://www.icloud.com"]
    
    
    //處理RepeatSection的第三個Cell(OneBigViewOneSmallViewCell)
    func didTapLeftButtonForOneBigViewOneSmallView() {
        let urlOfLeftButtonForOneBigViewOneSmallView = urlArray[5]
        performSegue(withIdentifier: "TurntoWebViewSegue", sender: urlOfLeftButtonForOneBigViewOneSmallView)
    }
    
    func didTapRightButtonForOneBigViewOneSmallView() {
        let urlOfRightButtonForOneBigViewOneSmallView = urlArray[6]
        performSegue(withIdentifier: "TurntoWebViewSegue", sender: urlOfRightButtonForOneBigViewOneSmallView)
    }
    
    //處理RepeatSection的第二個Cell(ThreeSmallViewsCell)
    func didTapLeftButtonForThreeSmallViews() {
        let urlOfLeftButtonForThreeSmallViews = urlArray[2]
        performSegue(withIdentifier: "TurntoWebViewSegue", sender: urlOfLeftButtonForThreeSmallViews)
    }
    
    func didTapcenterButtonForThreeSmallViews() {
        let urlOfcenterButtonForThreeSmallViews = urlArray[3]
        performSegue(withIdentifier: "TurntoWebViewSegue", sender: urlOfcenterButtonForThreeSmallViews)
    }
    
    func didTapRightButtonForThreeSmallViews() {
        let urlOfRightButtonForThreeSmallViews = urlArray[4]
        performSegue(withIdentifier: "TurntoWebViewSegue", sender: urlOfRightButtonForThreeSmallViews)
    }
    
    
    
    //處理RepeatSection的第一個Cell(TwoBigViewsCell)
    func didTapLeftButtonForTwoBigViewsCell() {
        let urlOfLeftButtonForTwoBigViewsCell = urlArray[0]
        performSegue(withIdentifier: "TurntoWebViewSegue", sender: urlOfLeftButtonForTwoBigViewsCell)
    }
    
    func didTapRightButtonForTwoBigViewsCell() {
        let urlOfRightButtonForTwoBigViewsCell = urlArray[1]
        performSegue(withIdentifier: "TurntoWebViewSegue", sender: urlOfRightButtonForTwoBigViewsCell)
    }
    
    //點按RepeatSection Cell中的按鈕會進到一個WebView
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TurntoWebViewSegue"{
            if let webView = segue.destination as? MyWebViewController{
                if let myUrl = sender as? String{
                    webView.urlFromViewOne = myUrl
                }
            }
        }
    }
    

    //建立圖片陣列(一開始的動畫列要用的)
    var sceneArray = ["s1","s2","s3","s4","s5","s6","s7","s8","s9","s10","s11","s12","s13","s14","s15","s16","s17","s18"]
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 5
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
        case 0:
            return 1
        case 1:
            return 1
        case 2:
            return 1
        case 3:
            return 3
        default:
            return 3
        }
    }


    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //第一個ImageCell部分
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "imageCell", for: indexPath) as! ImageTableViewCell
            cell.dynamicImageView.image = UIImage(named: sceneArray[indexPath.row])
            return cell
        //第二個MapCell部分
        }else if indexPath.section == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "mapCell", for: indexPath) as! MapTableViewCell
            
            return cell
        //第三個CollectionCell部分
        }else if indexPath.section == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "collectionCell", for: indexPath) as! CollectionTableViewCell
            
            //處理CollectionViewCell被點擊到的事件
            cell.delegateforCollectionViewItem = self
            return cell
        // Repeat Section的部分
        }else if indexPath.section == 3{
            
            if indexPath.row == 0 {
               let cell = tableView.dequeueReusableCell(withIdentifier: "twoBigViewsCell", for: indexPath) as! TwoBigViewsCell
                //練習MVC
                //實體化Section3Model
                let model = Section3Model(leftImage: UIImage(named:"s1")!,
                                          leftText: "s1",
                                          rightImage: UIImage(named:"s2")!,
                                          rightText: "s2")
                //已經把cell轉型成TwoBigViewsCell所以可以呼叫裡面自訂的data屬性及loadContent()方法
                cell.data = model
                cell.loadContent()
                
                cell.delegateforTwoBigViewsCell = self
                return cell
                
//                //先給左邊按鈕假圖假字
//                cell.leftImageView.image = UIImage(named: "s1")
//                cell.leftLabel.text = "s1"
//                //先給右邊按鈕假圖假字
//                cell.rightImageView.image = UIImage(named: "s2")
//                cell.rightLabel.text = "s2"
                
                //設定TwoBigViewsDelegate的Delegate為此ViewController
//                cell.delegateforTwoBigViewsCell = self
                
            }else if indexPath.row == 1{
                let cell = tableView.dequeueReusableCell(withIdentifier: "threeSmallViewsCell", for: indexPath) as! ThreeSmallViewsCell
                //先給左邊按鈕假圖假字
                cell.leftImageView.image = UIImage(named: "s3")
                cell.leftLabel.text = "s3"
                //先給中間按鈕假圖假字
                cell.centerImageView.image = UIImage(named: "s4")
                cell.centerLabel.text = "s4"
                //先給右邊按鈕假圖假字
                cell.rightImageView.image = UIImage(named: "s5")
                cell.rightLabel.text = "s5"
                //設定ThreeSmallViewsDelegate的Delegate為此ViewController
                cell.delegateforThreeSmallViewsCell = self
                return  cell
            }else{
                let cell = tableView.dequeueReusableCell(withIdentifier: "oneBigViewoneSmallViewCell", for: indexPath) as! OneBigViewOneSmallViewCell
                
                //先給左邊按鈕假圖假字
                cell.leftImage.image = UIImage(named: "s6")
                cell.leftLabel.text = "s6"
                
                
                //先給右邊按鈕假圖假字
                cell.rightImageView.image = UIImage(named: "s7")
                cell.rightLabel.text = "s7"
                
                //設定OneBigViewOneSmallViewDelegate的Delegate為此TableViewController
                cell.delegateForOneBigViewOneSmallView = self
                return  cell
            }
            //其他Section都是模仿Section 3 (repeat section)
        }else {

            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "twoBigViewsCell", for: indexPath) as! TwoBigViewsCell
                
                //先給左邊按鈕假圖假字
                cell.leftImageView.image = UIImage(named: "s9")
                cell.leftLabel.text = "s9"
                //先給右邊按鈕假圖假字
                cell.rightImageView.image = UIImage(named: "s10")
                cell.rightLabel.text = "s10"
                //設定TwoBigViewsDelegate的Delegate為此ViewController
                cell.delegateforTwoBigViewsCell = self
                return cell
            }else if indexPath.row == 1{
                let cell = tableView.dequeueReusableCell(withIdentifier: "threeSmallViewsCell", for: indexPath) as! ThreeSmallViewsCell
                //先給左邊按鈕假圖假字
                cell.leftImageView.image = UIImage(named: "s11")
                cell.leftLabel.text = "s11"
                //先給中間按鈕假圖假字
                cell.centerImageView.image = UIImage(named: "s12")
                cell.centerLabel.text = "s12"
                //先給右邊按鈕假圖假字
                cell.rightImageView.image = UIImage(named: "s13")
                cell.rightLabel.text = "s13"
                cell.delegateforThreeSmallViewsCell = self
                return  cell
            }else{
                let cell = tableView.dequeueReusableCell(withIdentifier: "oneBigViewoneSmallViewCell", for: indexPath) as! OneBigViewOneSmallViewCell
                
                //先給左邊按鈕假圖假字
                cell.leftImage.image = UIImage(named: "s14")
                cell.leftLabel.text = "s14"
                
                
                //先給右邊按鈕假圖假字
                cell.rightImageView.image = UIImage(named: "s15")
                cell.rightLabel.text = "s15"
                
                //
                cell.delegateForOneBigViewOneSmallView = self
                return  cell
                
            }
        }
       
    }
    

    //設定每個列高
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return (UIScreen.main.bounds.size.height)/4
        case 1:
            return (UIScreen.main.bounds.size.height)/6
        case 2:
            return (UIScreen.main.bounds.size.height)/7
        case 3:
            if indexPath.row == 0{
                return (UIScreen.main.bounds.size.height)/3.5
            }else if indexPath.row == 1{
                return (UIScreen.main.bounds.size.height)/3.5
            }else {
                return (UIScreen.main.bounds.size.height)/3.5
            }
            //其他列高都比照section 3
        default:
//            return (UIScreen.main.bounds.size.height)/3.5
            if indexPath.row == 0{
                return (UIScreen.main.bounds.size.height)/3.5
            }else if indexPath.row == 1{
                return (UIScreen.main.bounds.size.height)/3.5
            }else {
                return (UIScreen.main.bounds.size.height)/3.5
            }
        }
    }
    
    //設定每個section的標題
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return ""
        case 1:
            return "地圖"
        case 2:
            return "分類"
        case 3:
            return "記事"
        default:
            return ""
        }
    }
    
    //設定section中header的背景色(預設是淡灰色)
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .white
    }
    
}

//讓MainTableViewController來處理CollectionViewCell被點到的事件
extension MainTableViewController: CollectionViewDidSelectDelegate{
    func didSelectItemInCollectionView() {
        performSegue(withIdentifier: "CollectionViewTurntoAnotherTableView", sender: nil)
    }
    
    
}
