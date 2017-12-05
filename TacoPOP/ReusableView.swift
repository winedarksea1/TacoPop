//
//  ReusableView.swift
//  TacoPOP
//
//  Created by Andrew McGovern on 12/5/17.
//  Copyright © 2017 Andrew McGovern. All rights reserved.
//

import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
