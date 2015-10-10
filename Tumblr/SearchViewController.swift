//
//  SearchViewController.swift
//  Tumblr
//
//  Created by Jessie on 10/7/15.
//  Copyright © 2015 Jessie. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var feedView: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    var images: [UIImage]!
    var animatedImage: UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = feedView.image!.size

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
         scrollView.alpha = 0
         imageView.alpha = 1
        }
    
    override func viewDidAppear(animated: Bool) {
        self.loading_1 = UIImage(named: "loading-1")
        self.loading_2 = UIImage(named: "loading-2")
        self.loading_3 = UIImage(named: "loading-3")
        self.images = [self.loading_1, self.loading_2, self.loading_3]
        
        //call and store
        self.animatedImage = UIImage.animatedImageWithImages(self.images, duration: 1.0)
        
        self.imageView.image = self.animatedImage
        
        
        delay(2, closure: { () ->
            () in
            
            self.scrollView.alpha = 1
            self.imageView.alpha = 0
            
        })

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
