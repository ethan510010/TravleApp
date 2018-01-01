//
//  ImageTableViewCell.swift
//  TravelApp
//
//  Created by EthanLin on 2017/12/29.
//  Copyright © 2017年 EthanLin. All rights reserved.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    var sceneArray = ["s1","s2","s3","s4","s5","s6","s7","s8","s9","s10","s11","s12","s13","s14","s15","s16","s17","s18"]
    
    var count = 0
    
    @IBOutlet weak var dynamicImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(autoChangeView), userInfo: nil, repeats: true)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @objc func autoChangeView(){
        dynamicImageView.image = UIImage(named:sceneArray[count])
        count += 1
        if count == 17{
            count = 0
        }
    }

}
