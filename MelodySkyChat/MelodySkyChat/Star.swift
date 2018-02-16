//
//  Star.swift
//  MelodySkyChat
//
//  Created by Sky Xu on 2/15/18.
//  Copyright © 2018 Sky Xu. All rights reserved.
//

import Foundation

import UIKit

@IBDesignable
class Ball: UIView {
    
    @IBInspectable var cornerRadius: CGFloat = 15 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
}
