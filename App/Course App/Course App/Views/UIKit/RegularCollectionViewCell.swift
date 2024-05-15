//
//  RegularCollectionViewCell.swift
//  Course App
//
//  Created by Gerardo Reyes on 15.05.2024.
//

import UIKit


class RegularCollectionViewCell: UICollectionViewCell {

    class func size() -> CGSize {
        let height = 150.0
        return CGSize(width: UIScreen.main.bounds.width, height: height)
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
        self.backgroundColor = UIColor.black
    }

}
