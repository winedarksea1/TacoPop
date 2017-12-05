//
//  UICollectionView+Ext.swift
//  TacoPOP
//
//  Created by Andrew McGovern on 12/5/17.
//  Copyright © 2017 Andrew McGovern. All rights reserved.
//

import UIKit

extension UICollectionView {
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableView,
        T: NibLoadableView {
            let nib = UINib(nibName: T.nibName, bundle: nil)
            register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: NSIndexPath) -> T where T:
        ReusableView {
        guard let cell = dequeueReusableCell(withReuseIdentifier:
            T.reuseIdentifier, for: indexPath as IndexPath) as? T else {
                fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        return cell
    }
}

extension UICollectionViewCell: ReusableView {}
