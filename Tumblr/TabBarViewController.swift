//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Jessie on 10/7/15.
//  Copyright © 2015 Jessie. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController{
    
    
    @IBOutlet weak var tabbarView: UIView!
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var composeButton: UIButton!
    @IBOutlet weak var trendingButton: UIButton!
    @IBOutlet weak var accountButton: UIButton!
    @IBOutlet weak var exploreBubble: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    
//    var gray: UIColor!
//    var blue: UIColor!
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    var images: [UIImage]!
    var animatedImage: UIImage!

    
    //Define variables to hold each ViewController associated with a tab.
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var trendingViewController: UIViewController!
    var accountViewController: UIViewController!
    //var selected = "Home"

    var viewControllers: [UIViewController]!
    var buttons: [UIButton]!
    var selectedIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        gray = makeRGB(49, G: 67, B: 86, alpha: 1)
//        blue = makeRGB(50, G: 70, B: 90, alpha: 1)
        
        
        //Access storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        //Instantiate ViewControllers
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        composeViewController = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        
        //Add to arrays
        viewControllers = [homeViewController, searchViewController, trendingViewController, accountViewController]
        
        buttons = [homeButton, searchButton, trendingButton, accountButton]

        //Initialize
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
        
        
    }
    

    @IBAction func didPressTab(sender: UIButton) {
        //keep track of previous button
        let previousIndex = selectedIndex
        //set the selectedIndex to the tag value of button tapped
        selectedIndex = sender.tag
        //hide bubble on search
        if(selectedIndex == 1){
            exploreBubble.alpha = 0
        }else{
            exploreBubble.alpha = 1
        }
        //set previous button state
        buttons[previousIndex].selected = false
        //access previous ViewController
        let previousVC = viewControllers[previousIndex]
        //Remove previous ViewController
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        //set selected button state
        sender.selected = true
        //access current ViewController
        let vc = viewControllers[selectedIndex]
        //add new ViewController
        addChildViewController(vc)
        //adjust size of ViewController view you are adding to match contentView of TabBarViewController
        vc.view.frame = contentView.bounds
        //add ViewController as subView
        contentView.addSubview(vc.view)
        //call viewDidAppear of ViewController you are adding
        vc.didMoveToParentViewController(self)
      
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        contentView.alpha = 0
        imageView.alpha = 1
        exploreBubble.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool) {
        self.loading_1 = UIImage(named: "loading-1")
        self.loading_2 = UIImage(named: "loading-2")
        self.loading_3 = UIImage(named: "loading-3")
        self.images = [self.loading_1, self.loading_2, self.loading_3]
        
        //call and store
        self.animatedImage = UIImage.animatedImageWithImages(self.images, duration: 1.0)
        
        self.imageView.image = self.animatedImage
        
        
        delay(2.5 , closure: { () ->
            () in
            
            self.contentView.alpha = 1
            self.imageView.alpha = 0
            self.exploreBubble.alpha = 1
            
        })
        
        //animate bubble
        
        UIView.animateWithDuration(1.5, delay: 0, options: [.Autoreverse, .Repeat], animations: { () -> Void in
            self.exploreBubble.transform = CGAffineTransformMakeTranslation(0, 7)
            }) { (Bool) -> Void in
                self.exploreBubble.transform = CGAffineTransformMakeTranslation(0, -7)}
    }

   
}
