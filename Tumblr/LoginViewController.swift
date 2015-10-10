//
//  LoginViewController.swift
//  Tumblr
//
//  Created by Jessie on 10/8/15.
//  Copyright © 2015 Jessie. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var loginImage: UIImageView!
    @IBOutlet weak var tumblrLogo: UIImageView!
    
    @IBOutlet weak var dataView: UIView!
    @IBOutlet weak var entryButton: UIButton!
    @IBOutlet weak var loginView: UIView!
    
    
    
    var isPresenting: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginView.alpha = 0
        dataView.alpha = 0
        
        
        
        delay(1, closure: { () ->
            () in
            
            UIView.animateWithDuration(0.5) { () -> Void in
                self.loginView.alpha = 1
                self.tumblrLogo.center.y = 110
            }})
        
    }
    
    @IBAction func onEntry(sender: AnyObject) {
        UIView.animateWithDuration(0.2) { () -> Void in
            self.dataView.alpha = 1
            self.loginImage.alpha = 0
        }
        
    }
    
}

