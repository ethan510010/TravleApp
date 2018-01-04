//
//  AnotherOneBigViewOneSmallViewCell.swift
//  TravelApp
//
//  Created by EthanLin on 2018/1/4.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

class AnotherOneBigViewOneSmallViewCell: UITableViewCell {
    
    //處理左半邊的大按鈕
    
    @IBOutlet weak var anotherOneBigOneSmallViewCellLeftImageView: UIImageView!
    
    @IBOutlet weak var anotherOneBigOneSmallViewCellLeftLabel: UILabel!
    
    @IBAction func anotherOneBigOneSmallViewCellLeftButton(_ sender: UIButton) {
    }
    
    //處理右半邊的小按鈕
    
    @IBOutlet weak var anotherOneBigOneSmallViewCellRightImageView: UIImageView!
    
    @IBOutlet weak var anotherOneBigOneSmallViewCellRightLabel: UILabel!
    
    @IBAction func anotherOneBigOneSmallViewCellRightButton(_ sender: UIButton) {
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
