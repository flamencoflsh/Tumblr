//
//  SettingsViewController.swift
//  Tumblr
//
//  Created by Jessie on 10/10/15.
//  Copyright © 2015 Jessie. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UIActionSheetDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressLogout(sender: AnyObject) {
        
        var actionSheet = UIActionSheet(title: "Are you sure you want to log out?", delegate: self, cancelButtonTitle: "Cancel", destructiveButtonTitle: "Log Out")
        
        actionSheet.showInView(view)
        
        
    }
    
    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
        if buttonIndex == 0 {
            //dismissViewControllerAnimated(true, completion: nil)
            performSegueWithIdentifier("logoutSegue", sender: nil)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
