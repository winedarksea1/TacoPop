//
//  NibLoadableView.swift
//  TacoPOP
//
//  Created by Andrew McGovern on 12/5/17.
//  Copyright © 2017 Andrew McGovern. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
