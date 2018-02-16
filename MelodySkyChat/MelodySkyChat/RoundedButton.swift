//
//  RoundedButton.swift
//  MelodySkyChat
//
//  Created by Sky Xu on 2/15/18.
//  Copyright © 2018 Sky Xu. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class RoundedButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 35 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
}
