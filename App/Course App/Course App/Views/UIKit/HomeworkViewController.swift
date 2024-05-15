//
//  HomeworkViewController.swift
//  Course App
//
//  Created by Gerardo Reyes on 15.05.2024.
//

import UIKit


class HomeworkViewController: UICollectionViewController {
    
    let numberOfItems: Int = 10

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    func setup() {
        // Assign this viewcontroller's collection view to our own custom one.
        self.collectionView = {
            let layout = UICollectionViewFlowLayout()
            let parentCollectionView = ParentCollectionView(frame: .zero, collectionViewLayout: layout)
            parentCollectionView.translatesAutoresizingMaskIntoConstraints = false
            return parentCollectionView
        }()

        // Set delegate and register regular cells
        self.collectionView.delegate = self
        self.collectionView.register(RegularCollectionViewCell.self, forCellWithReuseIdentifier: RegularCollectionViewCell.identifier)
        // If we dont register UICollectionViewCell.self, build fails because of a dequeue of UICollectionElementKindCell
        self.collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: UICollectionViewCell.identifier)

        // Add simple Contraints
        let guide = self.view.safeAreaLayoutGuide

        self.collectionView.topAnchor.constraint(equalTo: guide.topAnchor).isActive = true
        self.collectionView.leftAnchor.constraint(equalTo: guide.leftAnchor).isActive = true
        self.collectionView.rightAnchor.constraint(equalTo: guide.rightAnchor).isActive = true
        self.collectionView.bottomAnchor.constraint(equalTo: guide.bottomAnchor).isActive = true
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Erroneous Data from your network call, data should be a class property.
        // swiftlint:disable:next explicit_init
        let data = Array.init(repeating: "0", count: numberOfItems)

        // If it's first row, create an horizontal view
        if indexPath.row == 0 {
            // Create a new empty cell for reuse, this cell will only be used for the frist cell.
            let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: UICollectionViewCell.identifier, for: IndexPath(row: 0, section: 0))

            let horizontalView: HorizontalCollectionView = {
                // Only Flow Layout has scroll direction
                let layout = UICollectionViewFlowLayout()
                layout.scrollDirection = .horizontal
                return HorizontalCollectionView(frame: cell.frame, collectionViewLayout: layout, data: data)
            }()

            cell.addSubview(horizontalView)
            
            return cell
        }

        // In all other cases, just create a regular cell.
        return self.collectionView.dequeueReusableCell(withReuseIdentifier: RegularCollectionViewCell.identifier, for: indexPath)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // Number of rows
        numberOfItems
    }

}


extension HomeworkViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // Set size for the each row
        RegularCollectionViewCell.size()
    }
    
}
