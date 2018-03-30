//
//  RoundButton.swift
//  Core Location
//
//  Created by Vineeth Xavier on 3/29/18.
//  Copyright © 2018 Vineeth Xavier. All rights reserved.
//

import UIKit
@IBDesignable
class RoundButton: UIButton {

    override func layoutSubviews() {
        super.layoutSubviews()
        
        updateCornerRadius()
    }
    
    @IBInspectable var VXrounded: Bool = false {
        didSet {
            updateCornerRadius()
        }
    }
    
    func updateCornerRadius() {
        layer.cornerRadius = VXrounded ? frame.size.height / 2 : 0
    }
}
