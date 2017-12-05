//
//  DropShadow.swift
//  TacoPOP
//
//  Created by Andrew McGovern on 12/4/17.
//  Copyright © 2017 Andrew McGovern. All rights reserved.
//

import Foundation
import UIKit

protocol DropShadow {}

extension DropShadow where Self: UIView {
    func addDropShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
}
