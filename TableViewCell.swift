//
//  TableViewCell.swift
//  CollectionView in TableView
//
//  Created by JON on 1/17/16.
//  Copyright © 2016 JON. All rights reserved.
//

import Foundation
import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet private weak var collectionView: UICollectionView!
    
    var collectionViewOffset: CGFloat {
        get {
            return collectionView.contentOffset.x
        }
        
        set {
            collectionView.contentOffset.x = newValue
        }
    }
    
    func setCollectionViewDataSourceDelegate <D: protocol<UICollectionViewDataSource, UICollectionViewDelegate>> (dataSourceDelegate: D, forRow row: Int) {
            
        collectionView.delegate = dataSourceDelegate
        collectionView.dataSource = dataSourceDelegate
        collectionView.tag = row
        collectionView.reloadData()
    }
    
//    override func layoutSubviews() {
//        super.layoutSubviews();
//        
//        for subview in self.contentView.superview!.subviews {
//            if String(subview.dynamicType) == "_UITableViewCellSeparatorView" {
//                subview.hidden = false;
//            }
//        }
//        
//    }
    
}
