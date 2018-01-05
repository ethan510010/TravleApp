//
//  AnotherThreeSmallViewsCell.swift
//  TravelApp
//
//  Created by EthanLin on 2018/1/4.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

protocol AnotherThreeSmallViewsDelegate {
    func didTapAnotherThreeSmallViewsLeftButton()
    func didTapAnotherThreeSmallViewsCenterButton()
    func didTapAnotherThreeSmallViewsRightButton()
}

class AnotherThreeSmallViewsCell: UITableViewCell {
    
    
    var delegateForAnotherThreeSmallViewsCell:AnotherThreeSmallViewsDelegate?
    
    //處理左邊的按鈕
    @IBOutlet weak var anotherSmallThreeViewsCellLeftImageView: UIImageView!
    
    
    @IBOutlet weak var anotherSmallThreeViewsCellLeftLabel: UILabel!
    
    
    @IBAction func anotherSmallThreeViewsCellLeftButton(_ sender: UIButton) {
        delegateForAnotherThreeSmallViewsCell?.didTapAnotherThreeSmallViewsLeftButton()
    }
    
    
    //處理中間的按鈕
    @IBOutlet weak var anotherSmallThreeViewsCellCenterImageView: UIImageView!
    
    @IBOutlet weak var anotherSmallThreeViewsCellCenterLabel: UILabel!
    
    @IBAction func anotherSmallThreeViewsCellCenterButton(_ sender: UIButton) {
        delegateForAnotherThreeSmallViewsCell?.didTapAnotherThreeSmallViewsCenterButton()
    }
    
    
    //處理右邊的按鈕
    
    @IBOutlet weak var anotherSmallThreeViewsCellRightImageView: UIImageView!
    
    @IBOutlet weak var anotherSmallThreeViewsCellRightLabel: UILabel!
    
    @IBAction func anotherSmallThreeViewsCellRightButton(_ sender: UIButton) {
        delegateForAnotherThreeSmallViewsCell?.didTapAnotherThreeSmallViewsRightButton()
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
