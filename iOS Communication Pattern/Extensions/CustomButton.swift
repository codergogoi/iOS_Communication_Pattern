//
//  CustomButtons.swift
//  iOS Communication Pattern
//
//  Created by MAC01 on 26/03/18.
//  Copyright © 2018 Jayanta Gogoi. All rights reserved.
//

import UIKit

class CustomButton : UIButton{
    
    init(frame: CGRect, withTitle: String, bgColor: UIColor, fgColor: UIColor) {
        super.init(frame: frame)
        
        let attrText = NSAttributedString(string: withTitle, attributes: [NSAttributedStringKey.foregroundColor: fgColor, NSAttributedStringKey.font : UIFont.systemFont(ofSize: 16)])
        self.layer.backgroundColor = bgColor.cgColor
        self.layer.cornerRadius  = 4
        self.layer.borderColor = UIColor.darkGray.cgColor
        self.layer.borderWidth = 1
        self.setAttributedTitle(attrText, for: .normal)
    }
    
   
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
