//
//  CollectionViewCellConnectAnotherTableViewController.swift
//  TravelApp
//
//  Created by EthanLin on 2018/1/4.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

class CollectionViewCellConnectAnotherTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    

    @IBOutlet weak var collectionViewCellConnectAnotherTableView: UITableView!
    
    //實作這個TableView的內容，這個TableView的情況與MainTableViewController的repeatSection幾乎一樣，只有第一個Cell不同
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            //處理第一個Cell:SuperBigViewCell
            if indexPath.row == 0{
                let cell = tableView.dequeueReusableCell(withIdentifier: "anotherOneSuperBigViewCell", for: indexPath) as! AnotherSuperBigViewCell
                cell.anotherTableViewOneSuperBigVewCellImageView.image = UIImage(named: "s1")
                cell.anotherTableViewCellOneSuperBigViewCellLabel.text = "s1"
                
                ////設定AnotherOneSuperBigViewDelegate的Delegate為此ViewController
                cell.delegateForAnotherOneSuperBigViewCell = self
                return cell
                //處理第二個Cell:ThreeSmallViewsCell
            }else if indexPath.row == 1{
                let cell = tableView.dequeueReusableCell(withIdentifier: "anotherThreeSmallViewsCell", for: indexPath) as! AnotherThreeSmallViewsCell
                
                //處理最左邊
                cell.anotherSmallThreeViewsCellLeftImageView.image = UIImage(named: "s2")
                cell.anotherSmallThreeViewsCellLeftLabel.text = "s2"
                
                //處理中間
                cell.anotherSmallThreeViewsCellCenterImageView.image = UIImage(named: "s3")
                cell.anotherSmallThreeViewsCellCenterLabel.text = "s3"
                
                //處理右邊
                cell.anotherSmallThreeViewsCellRightImageView.image = UIImage(named: "s4")
                cell.anotherSmallThreeViewsCellRightLabel.text = "s4"
                
                cell.delegateForAnotherThreeSmallViewsCell = self
                return cell
                //處理第三個Cell:OneBigViewOneSmallViewCell
            }else{
                let cell = tableView.dequeueReusableCell(withIdentifier: "anotherOneBigViewOneSmallViewCell", for: indexPath) as! AnotherOneBigViewOneSmallViewCell
                
                //處理左邊的大按鈕相關
                cell.anotherOneBigOneSmallViewCellLeftImageView.image = UIImage(named: "s5")
                cell.anotherOneBigOneSmallViewCellLeftLabel.text = "s5"
                
                //處理右邊的小按鈕相關
                cell.anotherOneBigOneSmallViewCellRightImageView.image = UIImage(named: "s6")
                cell.anotherOneBigOneSmallViewCellRightLabel.text = "s6"
                
                cell.delegateForAnotherOneBigViewOneSmallViewCell = self
                
                return cell
            }
        }else{
            //其他section都比照辦理以3個row為單位repeat下去
            //處理第一個Cell:SuperBigViewCell
            if indexPath.row == 0{
                let cell = tableView.dequeueReusableCell(withIdentifier: "anotherOneSuperBigViewCell", for: indexPath)
                cell.textLabel?.text = "SuperBig"
                return cell
                //處理第二個Cell:ThreeSmallViewsCell
            }else if indexPath.row == 1{
                let cell = tableView.dequeueReusableCell(withIdentifier: "anotherThreeSmallViewsCell", for: indexPath)
                cell.textLabel?.text = "ThreeSmallViews"
                return cell
                //處理第三個Cell:OneBigViewOneSmallViewCell
            }else{
                let cell = tableView.dequeueReusableCell(withIdentifier: "anotherOneBigViewOneSmallViewCell", for: indexPath)
                cell.textLabel?.text = "OneBigViewOneSmallView"
                return cell
            }
        }
    }
    
    //設定此TableView的列高
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return (UIScreen.main.bounds.size.height / 3.5)
        }else if indexPath.row == 1{
            return (UIScreen.main.bounds.size.height / 3.5)
        }else{
            return (UIScreen.main.bounds.size.height / 3.5)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //此ViewController作為TableView的delegate，這個TableView我們用ViewController來做，MainTableViewController我們是用TableViewController來做
        collectionViewCellConnectAnotherTableView.delegate = self
        collectionViewCellConnectAnotherTableView.dataSource = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

//開始處理裡面三種cell(一大、三小、一大一小)的button觸及事件
extension CollectionViewCellConnectAnotherTableViewController: AnotherOneSuperBigViewDelegate{
    func didTapAnotherOneSuperBigView() {
        performSegue(withIdentifier: "showAnotherWebViewSegue", sender: nil)
    }
}

extension CollectionViewCellConnectAnotherTableViewController: AnotherThreeSmallViewsDelegate{
    func didTapAnotherThreeSmallViewsLeftButton() {
        performSegue(withIdentifier: "showAnotherWebViewSegue", sender: nil)
    }
    
    func didTapAnotherThreeSmallViewsCenterButton() {
        performSegue(withIdentifier: "showAnotherWebViewSegue", sender: nil)
    }
    
    func didTapAnotherThreeSmallViewsRightButton() {
        performSegue(withIdentifier: "showAnotherWebViewSegue", sender: nil)
    }
    
}

extension CollectionViewCellConnectAnotherTableViewController: AnotherOneBigViewOneSmallViewDelegate{
    func didTapAnotherOneBigViewOneSmallViewLeftButton() {
        performSegue(withIdentifier: "showAnotherWebViewSegue", sender: nil)
    }
    
    func didTapAnotherOneBigViewOneSmallViewRightButton() {
        performSegue(withIdentifier: "showAnotherWebViewSegue", sender: nil)
    }
    
    
}
