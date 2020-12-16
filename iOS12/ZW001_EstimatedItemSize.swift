//
//  ZWEstimatedItemSize.swift
//
//  Created by ZhiWei Cao on 2020/12/16.
//

// For UICollectionView.estimatedItemSize
// Fix on UICollectionViewCell
// REF: https://stackoverflow.com/questions/51375566/in-ios-12-when-does-the-uicollectionview-layout-cells-use-autolayout-in-nib/52428617#52428617
override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {

    let layout = super.preferredLayoutAttributesFitting(layoutAttributes)
    
    layout.frame.size = contentView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
    
    return layout        
     
}
