//
//  AnotherTwoBigViewsCell.swift
//  TravelApp
//
//  Created by EthanLin on 2018/1/4.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

protocol AnotherOneSuperBigViewDelegate {
    func didTapAnotherOneSuperBigView()
}

class AnotherSuperBigViewCell: UITableViewCell {
    
    
    var delegateForAnotherOneSuperBigViewCell:AnotherOneSuperBigViewDelegate?

    //這個Cell只有一個大按鈕
    @IBOutlet weak var anotherTableViewOneSuperBigVewCellImageView: UIImageView!
    
    @IBOutlet weak var anotherTableViewCellOneSuperBigViewCellLabel: UILabel!
    
    
    @IBAction func anotherTableViewOneSuperBigViewCellButton(_ sender: UIButton) {
        delegateForAnotherOneSuperBigViewCell?.didTapAnotherOneSuperBigView()
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
