//
//  OneBigViewOneSmallViewCell.swift
//  TravelApp
//
//  Created by EthanLin on 2018/1/2.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

protocol OneBigViewOneSmallViewDelegate{
    func didTapLeftButtonForOneBigViewOneSmallView()
    func didTapRightButtonForOneBigViewOneSmallView()
}

class OneBigViewOneSmallViewCell: UITableViewCell {
    
    
    var delegateForOneBigViewOneSmallView: OneBigViewOneSmallViewDelegate?
    
    // 左邊的按鈕行為
    @IBAction func leftButton(_ sender: UIButton) {
        delegateForOneBigViewOneSmallView?.didTapLeftButtonForOneBigViewOneSmallView()
    }
    
    @IBOutlet weak var leftImage: UIImageView!
    
    @IBOutlet weak var leftLabel: UILabel!
    
    //右邊的按鈕行為
    
    @IBAction func rightButton(_ sender: UIButton) {
        delegateForOneBigViewOneSmallView?.didTapRightButtonForOneBigViewOneSmallView()
    }
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBOutlet weak var rightLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
