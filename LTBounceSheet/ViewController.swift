//
//  ViewController.swift
//  LTBounceSheet
//
//  Created by vale on 5/20/15.
//  Copyright (c) 2015 changweitu@gmail.com. All rights reserved.
//

import UIKit

let color = UIColor(red: 0/255.0, green: 175/255.0, blue: 240/255.0, alpha: 1)
class ViewController: UIViewController {

    var sheet: LTBounceSheet!
    var shown: Bool!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
    }

    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(animated)
        self.sheet = LTBounceSheet(height: 250, bgColor: color)
        
        let option1 = produceButtonWithTitle("take photo")
        option1.frame=CGRectMake(15, 50, 290, 46);
        self.sheet.addView(option1)
        
        let option2 = produceButtonWithTitle("choose existing photo")
        option2.frame=CGRectMake(15, 115, 290, 46);
        self.sheet.addView(option2)
        
        
        let cancel = produceButtonWithTitle("cancel")
        cancel.frame=CGRectMake(15, 180, 290, 46);
        self.sheet.addView(cancel)
        
        
        
    }
    
    func produceButtonWithTitle(title: String) -> UIButton {
        
        var button = UIButton.buttonWithType(.Custom) as! UIButton
        button.backgroundColor = UIColor.whiteColor()
        button.layer.cornerRadius=23
        button.titleLabel!.textAlignment = .Center;
        button.titleLabel!.font = UIFont(name: "Helvetica Neue", size: 16)
        
        button.setTitle(title, forState: .Normal)
        button.setTitleColor(color, forState: .Normal)
        return button;
    }


}

