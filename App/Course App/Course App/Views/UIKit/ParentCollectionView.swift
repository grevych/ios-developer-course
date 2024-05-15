//
//  ParentCollectionView.swift
//  Course App
//
//  Created by Gerardo Reyes on 15.05.2024.
//

import UIKit


class ParentCollectionView: UICollectionView {

    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
    }

    // I don't have idea what is this
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
