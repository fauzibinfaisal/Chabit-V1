//
//  CardUIView.swift
//  ChabitApp
//
//  Created by Fauzi Fauzi on 18/07/19.
//  Copyright © 2019 C2G10. All rights reserved.
//

import UIKit

//ubah dikit
@IBDesignable
class CardUIView: UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = false
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.shadowRadius = newValue
            layer.masksToBounds = false
        }
    }
    
    
    @IBInspectable var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue/100
            layer.shadowColor = UIColor.darkGray.cgColor
        }
    }
    
    @IBInspectable var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
            layer.shadowColor = UIColor.black.cgColor
            layer.masksToBounds = false
        }
    }
    
    @IBInspectable var borderSet: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
            layer.borderColor = #colorLiteral(red: 0, green: 0.7398331761, blue: 0.5932348371, alpha: 1)
        }
    }
}

