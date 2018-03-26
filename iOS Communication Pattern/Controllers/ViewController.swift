//
//  ViewController.swift
//  iOS Communication Pattern
//
//  Created by MAC01 on 26/03/18.
//  Copyright © 2018 Jayanta Gogoi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let btnDelegate : CustomButton = {
       
        let btn = CustomButton(frame: .zero, withTitle: "Delegate Protocol", bgColor: UIColor.black, fgColor: UIColor.white)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
        
    }()
    
    let btnNotification : CustomButton = {
        
        let btn = CustomButton(frame: .zero, withTitle: "Notification Observer", bgColor: UIColor.black, fgColor: UIColor.white)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
        
    }()
    
    let btnReference : CustomButton = {
        
        let btn = CustomButton(frame: .zero, withTitle: "Passby Reference", bgColor: UIColor.black, fgColor: UIColor.white)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(white: 0.95, alpha: 1.0)
        navigationItem.title = "Home Page"
        setupView()
    }
    
    func setupView(){
        
        view.addSubview(btnDelegate)
        view.addSubview(btnNotification)
        view.addSubview(btnReference)
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-50-[v0]-50-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": btnDelegate]))
        
         view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-50-[v0]-50-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": btnNotification]))
        
         view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-50-[v0]-50-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": btnReference]))
        
         view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-200-[v0(50)]-30-[v1(50)]-30-[v2(50)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": btnDelegate,"v1": btnNotification,"v2": btnReference]))
 
        btnDelegate.addTarget(self, action: #selector(didTapBtnDelegate(_:)), for: .touchUpInside)
        btnNotification.addTarget(self, action: #selector(didTapBtnNotification(_:)), for: .touchUpInside)
        btnReference.addTarget(self, action: #selector(didTapBtnReference(_:)), for: .touchUpInside)
 
    }
    
    
    @objc func didTapBtnDelegate(_ sender: UIButton){
        sender.didTapAnim()
        
        
    }
    
    @objc func didTapBtnNotification(_ sender: UIButton){
        sender.didTapAnim()
        
        
    }
 
    @objc func didTapBtnReference(_ sender: UIButton){
        sender.didTapAnim()
 
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

