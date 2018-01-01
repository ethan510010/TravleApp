//
//  MainTableViewController.swift
//  TravelApp
//
//  Created by EthanLin on 2017/12/29.
//  Copyright © 2017年 EthanLin. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

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
        return 3
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
        default:
            return 0
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
            return cell
        }else {
            let cell = UITableViewCell()
            return  cell
        }
       
    }
    

    //設定列高
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return (UIScreen.main.bounds.size.height)/4
        case 1:
            return (UIScreen.main.bounds.size.height)/6
        case 2:
            return (UIScreen.main.bounds.size.height)/7
        default:
            return 100
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
        default:
            return ""
        }
    }
    
    //設定section中header的背景色(預設是淡灰色)
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .white
    }
    
}
