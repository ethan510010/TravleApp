//
//  TwoBigViewsCell.swift
//  TravelApp
//
//  Created by EthanLin on 2018/1/2.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

protocol TwoBigViewsDelegate{
    func didTapLeftButtonForTwoBigViewsCell()
    func didTapRightButtonForTwoBigViewsCell()
}



class TwoBigViewsCell: UITableViewCell {
    
    var delegateforTwoBigViewsCell:TwoBigViewsDelegate?
    
    
    
    //處理左邊按鈕的事件
    
    @IBAction func leftbutton(_ sender: UIButton) {
        //讓左半邊按鈕來執行delegate的方法
        delegateforTwoBigViewsCell?.didTapLeftButtonForTwoBigViewsCell()
    }
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    
    @IBOutlet weak var leftLabel: UILabel!
    

    //處理右半邊按鈕的事件
    
    @IBAction func rightButton(_ sender: UIButton) {
         //讓右半邊按鈕來執行delegate的方法
        delegateforTwoBigViewsCell?.didTapRightButtonForTwoBigViewsCell()
    }
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var rightLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
