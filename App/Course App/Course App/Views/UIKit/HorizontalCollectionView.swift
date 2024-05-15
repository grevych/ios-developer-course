//
//  HorizontalViewController.swift
//  Course App
//
//  Created by Gerardo Reyes on 15.05.2024.
//

import Foundation
import UIKit


class HorizontalCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    // Data model objects. Irrelevant for now
    var data: [Any]?
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
    }
    
    convenience init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout, data: [Any]) {
        self.init(frame: frame, collectionViewLayout: layout)
        
        self.delegate = self
        self.dataSource = self
        self.data = data
        
        setup()
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // return zero if we have no data to show.
        guard let count = self.data?.count else {
            return 0
        }
        return count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        self.dequeueReusableCell(withReuseIdentifier: InnerCollectionViewCell.identifier, for: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        InnerCollectionViewCell.size()
    }
    
    func setup() {
        self.backgroundColor = UIColor.white
        self.register(InnerCollectionViewCell.self, forCellWithReuseIdentifier: InnerCollectionViewCell.identifier)
    }
    
}
