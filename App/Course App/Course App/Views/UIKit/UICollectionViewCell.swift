//
//  UICollectionViewCell.swift
//  Course App
//
//  Created by Gerardo Reyes on 15.05.2024.
//

import UIKit


extension UICollectionViewCell {
    
    class var identifier: String {
        // swiftlint:disable:next force_unwrapping
        NSStringFromClass(self).components(separatedBy: ".").last!
    }

}
