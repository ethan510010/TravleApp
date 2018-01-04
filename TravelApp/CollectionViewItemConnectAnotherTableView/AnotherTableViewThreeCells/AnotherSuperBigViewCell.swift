//
//  AnotherTwoBigViewsCell.swift
//  TravelApp
//
//  Created by EthanLin on 2018/1/4.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

class AnotherSuperBigViewCell: UITableViewCell {

    
    @IBOutlet weak var anotherTableViewOneSuperBigVewCellImageView: UIImageView!
    
    @IBOutlet weak var anotherTableViewCellOneSuperBigViewCellLabel: UILabel!
    
    
    @IBAction func anotherTableViewOneSuperBigViewCellButton(_ sender: UIButton) {
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
