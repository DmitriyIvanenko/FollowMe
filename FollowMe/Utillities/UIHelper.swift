//
//  UIHelper.swift
//  FollowMe
//
//  Created by Dmytro Ivanenko on 14.11.2022.
//

import UIKit

enum UIHelper {
    
    static func createThreeColumnsFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
        
        let width = view.bounds.width
        let padding: CGFloat = 12
        let minimumItemSpacing: CGFloat = 10
        let availableWidth = width - (2*padding) - (2*minimumItemSpacing)
        let itemWidth = availableWidth / 3

        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
 
        return flowLayout
    }
}
