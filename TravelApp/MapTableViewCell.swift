//
//  MapTableViewCell.swift
//  TravelApp
//
//  Created by EthanLin on 2017/12/29.
//  Copyright © 2017年 EthanLin. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapTableViewCell: UITableViewCell, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    //追蹤位置程式碼
    var userLocationManeger = CLLocationManager()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        let myLocation = userLocationManeger.location?.coordinate
////        print(myLocation?.latitude)
////        print(myLocation?.longitude)
//        
//        //直向縮放範圍
//        let latRange:CLLocationDegrees = 0.01
//        //橫向縮放
//        let lonRange:CLLocationDegrees = 0.01
//        //總縮放範圍
//        let range:MKCoordinateSpan = MKCoordinateSpanMake(latRange, lonRange)
//        
//        if myLocation != nil{
//            let appearRegion:MKCoordinateRegion = MKCoordinateRegionMake(myLocation!, range)
//            //在地圖上顯示
//            mapView.setRegion(appearRegion, animated: true)
//        }


        
//
//        //設定代理人
//        userLocationManeger.delegate = self
//        //設定追蹤位置的設定
//        userLocationManeger.desiredAccuracy = kCLLocationAccuracyBest
//        userLocationManeger.activityType = .automotiveNavigation
//        userLocationManeger.stopUpdatingLocation()
        
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
