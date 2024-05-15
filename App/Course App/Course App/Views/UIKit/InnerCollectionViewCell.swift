//
//  InnerCollectionViewCell.swift
//  Course App
//
//  Created by Gerardo Reyes on 15.05.2024.
//

import UIKit


class InnerCollectionViewCell: UICollectionViewCell {

    class func size() -> CGSize {
        CGSize(width: 100.0, height: 100.0)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setup() {
        self.backgroundColor = UIColor.gray
    }
    
}
