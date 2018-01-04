//
//  CollectionTableViewCell.swift
//  TravelApp
//
//  Created by EthanLin on 2017/12/29.
//  Copyright © 2017年 EthanLin. All rights reserved.
//

import UIKit

//為了偵測鑲嵌在tableViewCell中的CollectionViewCell而寫的protocol
protocol CollectionViewDidSelectDelegate{
    func didSelectItemInCollectionView()
}

class CollectionTableViewCell: UITableViewCell,UICollectionViewDelegate, UICollectionViewDataSource {

    //建立種類陣列
    var categoryArray = ["scene","activity","season","meal","shopping"]
    
    //為了偵測鑲嵌在tableViewCell中的CollectionViewCell
    var delegateforCollectionViewItem:CollectionViewDidSelectDelegate?
    
    
    
    //進行collectionView與此TableViewCell的連結
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    //處理collectionview的部分-----------------------------------------------------------------------------------------
    
    //1.先處理layout（寫在awakeFromNib()方法中）
    
    //此部分在對應的tableViewCell中處理，因為直接拉到TableViewController會報錯
    
    
    
    //在TableViewCell中處理collectionView的layout
    @IBOutlet weak var myCollectionViewLayout: UICollectionViewFlowLayout!
    
    
    
    //2.處理CollectionView內容的部分
    
    //collectionView在這邊只有一個section，一個section要顯示的item
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoryArray.count
    }
    
    //設定collectionViewCell的內容
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! MyCollectionViewCell
        
        collectionViewCell.collectionImageView.image = UIImage(named: categoryArray[indexPath.row])
        
        collectionViewCell.collectionLabel.text = categoryArray[indexPath.row]
        
        return collectionViewCell
    }
    
    
    //偵測collectionView中哪個item被點到(item也是從0開始算)
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
        //呼叫delegateforCollectionViewItem中的方法
            delegateforCollectionViewItem?.didSelectItemInCollectionView()
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //處理layout的部分
        myCollectionViewLayout.itemSize.height = (UIScreen.main.bounds.height)/7
        
        
        myCollectionViewLayout.itemSize.width = myCollectionViewLayout.itemSize.height - 20 //itemSize有包含label的高度，現在是希望讓裡面圖片像正方形，所以寬為高度-20
        
        myCollectionViewLayout.sectionInset = UIEdgeInsetsMake(-10, 5, 5, 5)
        
        
        
        //設定CollectionView的delegate
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        
        //設定CollectionView的捲動方向，已在storyboard設定
        //不要顯示下面的捲動條
        myCollectionView.showsHorizontalScrollIndicator = false
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
