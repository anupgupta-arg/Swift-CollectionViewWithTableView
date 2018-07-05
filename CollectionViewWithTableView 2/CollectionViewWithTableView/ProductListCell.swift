//
//  ProductListCell.swift
//  CollectionViewWithTableView
//
//  Created by Anup Gupta on 09/06/18.
//  Copyright © 2018 GeekGuns. All rights reserved.
//

import UIKit

class ProductListCell: UITableViewCell {

    @IBOutlet weak var itemCollection: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCollectionViewDataSourceDelegate<D: UICollectionViewDataSource & UICollectionViewDelegate>(_ dataSourceDelegate: D, forRow row: Int) {
        
        itemCollection.delegate = dataSourceDelegate
        itemCollection.dataSource = dataSourceDelegate
        itemCollection.tag = row
        itemCollection.setContentOffset(itemCollection.contentOffset, animated:false) // Stops collection view if it was scrolling.
        itemCollection.reloadData()
    }
    
    var collectionViewOffset: CGFloat {
        set { itemCollection.contentOffset.x = newValue }
        get { return itemCollection.contentOffset.x }
    }
    
}
