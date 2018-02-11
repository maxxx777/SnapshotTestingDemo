//
//  EmptyStateView.swift
//  SnapshotDemo
//
//  Created by MAXIM TSVETKOV on 04/02/2018.
//  Copyright © 2018 MAXIM TSVETKOV. All rights reserved.
//

import UIKit

@IBDesignable

class EmptyStateView: UIView {
    
    @IBOutlet weak var imageView: UIImageView?
    @IBOutlet weak var labelText: UILabel?
    @IBOutlet weak var buttonDoSomething: UIButton?
    
    static let brandColor = UIColor.black
    
    class func instanceFromNib() -> EmptyStateView {
        let view = UINib(nibName: "EmptyStateView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! EmptyStateView
        
        view.labelText?.textColor = brandColor        
        view.labelText?.backgroundColor = brandColor
        
        view.buttonDoSomething?.layer.cornerRadius = 15
        view.buttonDoSomething?.layer.borderColor = brandColor.cgColor
        view.buttonDoSomething?.layer.borderWidth = 2.0
        view.buttonDoSomething?.backgroundColor = brandColor
        
        return view
    }
}
