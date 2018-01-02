//
//  ThreeSmallViewsCell.swift
//  TravelApp
//
//  Created by EthanLin on 2018/1/2.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

protocol ThreeSmallViewsDelegate{
    func didTapLeftButtonForThreeSmallViews()
    func didTapcenterButtonForThreeSmallViews()
    func didTapRightButtonForThreeSmallViews()
}

class ThreeSmallViewsCell: UITableViewCell {
    
    
    var delegateforThreeSmallViewsCell:ThreeSmallViewsDelegate?
    
    //左邊按鈕的行為
    @IBAction func leftButton(_ sender: UIButton) {
        delegateforThreeSmallViewsCell?.didTapLeftButtonForThreeSmallViews()
    }
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    
    @IBOutlet weak var leftLabel: UILabel!
    
    //中間按鈕的行為
    
    @IBAction func centerButton(_ sender: UIButton) {
        delegateforThreeSmallViewsCell?.didTapcenterButtonForThreeSmallViews()
    }
    
    @IBOutlet weak var centerImageView: UIImageView!
    
    
    @IBOutlet weak var centerLabel: UILabel!
    
    //右邊按鈕的行為
    
    @IBAction func rightButton(_ sender: UIButton) {
        delegateforThreeSmallViewsCell?.didTapRightButtonForThreeSmallViews()
    }
    
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBOutlet weak var rightLabel: UILabel!
    //.........................................................................
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
