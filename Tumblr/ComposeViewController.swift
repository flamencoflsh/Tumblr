//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Jessie on 10/8/15.
//  Copyright © 2015 Jessie. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController, UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning{
    
    @IBOutlet var composeView: UIView!
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var whiteButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var grayButton: UIButton!
    @IBOutlet weak var nevermindLabel: UILabel!
    
    var isPresenting: Bool = true

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        modalPresentationStyle = UIModalPresentationStyle.Custom
        transitioningDelegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        var destinationVC = segue.destinationViewController as UIViewController
        destinationVC.modalPresentationStyle = UIModalPresentationStyle.Custom
        destinationVC.transitioningDelegate = self
        
    }
    
    func animationControllerForPresentedController(presented: UIViewController!, presentingController presenting: UIViewController!, sourceController source: UIViewController!) -> UIViewControllerAnimatedTransitioning! {
        isPresenting = true
        return self
    }
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        // The value here should be the duration of the animations scheduled in the animationTransition method
        return 0.4
    }

    
    func animationControllerForDismissedController(dismissed: UIViewController!) -> UIViewControllerAnimatedTransitioning! {
        isPresenting = false
        return self
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        print("animating transition")
        var containerView = transitionContext.containerView()
        var toViewController = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!
        var fromViewController = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)!
        
        print("Is presenting: \(isPresenting)")
        
        if (isPresenting) {
            containerView!.addSubview(toViewController.view)
            toViewController.view.alpha = 1
            self.backgroundView.alpha = 0.95
            
//            UIView.animateWithDuration(0.1, animations: { () -> Void in
//                 self.redButton.transform = CGAffineTransformMakeTranslation(0, -410)
//            })
            
            UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.73, initialSpringVelocity: 4.0, options: [], animations: { () -> Void in
                self.redButton.transform = CGAffineTransformMakeTranslation(0, -410)
                }, completion: nil)

            
            delay(0.1, closure: { () ->
            () in
          
//            UIView.animateWithDuration(0.2, animations: { () -> Void in
//                self.whiteButton.transform = CGAffineTransformMakeTranslation(0, -410)
//            })
            
                UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.73, initialSpringVelocity: 4.0, options: [], animations: { () -> Void in
                    self.whiteButton.transform = CGAffineTransformMakeTranslation(0, -410)
                    }, completion: nil)
                
            
            })
    
            delay(0.2, closure: { () ->
                () in
                
//                UIView.animateWithDuration(0.2, animations: { () -> Void in
//                    self.blueButton.transform = CGAffineTransformMakeTranslation(0, -410)
//                    self.yellowButton.transform = CGAffineTransformMakeTranslation(0, -410)
//                })
                
                UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.73, initialSpringVelocity: 4.0, options: [], animations: { () -> Void in
                    self.blueButton.transform = CGAffineTransformMakeTranslation(0, -410)
                    self.yellowButton.transform = CGAffineTransformMakeTranslation(0, -410)
                    }, completion: nil)
            
            })
        
            delay(0.3, closure: { () ->
                () in
                
//                UIView.animateWithDuration(0.2, animations: { () -> Void in
//                    self.greenButton.transform = CGAffineTransformMakeTranslation(0, -410)
//                    self.grayButton.transform = CGAffineTransformMakeTranslation(0, -410)
//                })
                
                UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.73, initialSpringVelocity: 4.0, options: [], animations: { () -> Void in
                    self.greenButton.transform = CGAffineTransformMakeTranslation(0, -410)
                    self.grayButton.transform = CGAffineTransformMakeTranslation(0, -410)
                    }, completion: nil)
            
            })
        
            delay(0.4, closure: { () ->
                () in
                
//                UIView.animateWithDuration(0.2, animations: { () -> Void in
//                    self.nevermindLabel.transform = CGAffineTransformMakeTranslation(0, -40)
//                })
                
                UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.73, initialSpringVelocity: 4.0, options: [], animations: { () -> Void in
                    self.nevermindLabel.transform = CGAffineTransformMakeTranslation(0, -40)
                    }, completion: nil)
            
            })
            transitionContext.completeTransition(true)
        } else {
            
//            UIView.animateWithDuration(0.1, animations: { () -> Void in
//                self.nevermindLabel.transform = CGAffineTransformMakeTranslation(0, 40)
//            })
            
            UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.73, initialSpringVelocity: 4.0, options: [], animations: { () -> Void in
                 self.nevermindLabel.transform = CGAffineTransformMakeTranslation(0, 40)
                }, completion: nil)
            
            delay(0.1, closure: { () ->
                () in
                
//                UIView.animateWithDuration(0.2, animations: { () -> Void in
//                    self.greenButton.transform = CGAffineTransformMakeTranslation(0, 410)
//                    self.grayButton.transform = CGAffineTransformMakeTranslation(0, 410)
//                })
            
            UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.73, initialSpringVelocity: 4.0, options: [], animations: { () -> Void in
                self.greenButton.transform = CGAffineTransformMakeTranslation(0, 410)
                self.grayButton.transform = CGAffineTransformMakeTranslation(0, 410)
                    }, completion: nil)
            })
            
            delay(0.2, closure: { () ->
                () in
                
//                UIView.animateWithDuration(0.2, animations: { () -> Void in
//                    self.blueButton.transform = CGAffineTransformMakeTranslation(0, 410)
//                    self.yellowButton.transform = CGAffineTransformMakeTranslation(0, 410)
//                })
            
                UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.73, initialSpringVelocity: 4.0, options: [], animations: { () -> Void in
                    self.blueButton.transform = CGAffineTransformMakeTranslation(0, 410)
                    self.yellowButton.transform = CGAffineTransformMakeTranslation(0, 410)
                    }, completion: nil)
            })
                
            
            
            delay(0.3, closure: { () ->
                () in
                
//                UIView.animateWithDuration(0.2, animations: { () -> Void in
//                    self.whiteButton.transform = CGAffineTransformMakeTranslation(0, 410)
//                })
        
                UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.73, initialSpringVelocity: 4.0, options: [], animations: { () -> Void in
         self.whiteButton.transform = CGAffineTransformMakeTranslation(0, 410)
        }, completion: nil)
        
        
        })
            
            delay(0.4, closure: { () ->
                () in
                
//                UIView.animateWithDuration(0.2, animations: { () -> Void in
//                    self.redButton.transform = CGAffineTransformMakeTranslation(0, 410)
//                })
                
                UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.73, initialSpringVelocity: 4.0, options: [], animations: { () -> Void in
                     self.redButton.transform = CGAffineTransformMakeTranslation(0, 410)
                    }, completion: nil)
            
            })

            delay(0.5, closure: { () ->
                () in
                
                UIView.animateWithDuration(0.2, animations: { () -> Void in
                    fromViewController.view.alpha = 0
                })
            
                
            })
            
            delay(0.6, closure: { () ->
                () in
                
                UIView.animateWithDuration(0.2, animations: { () -> Void in
                    fromViewController.view.removeFromSuperview()
                    
                    transitionContext.completeTransition(true)
                })})
            
           
        }
    }

    @IBAction func onTap(sender: UITapGestureRecognizer) {
        print("dismiss")
        dismissViewControllerAnimated(true, completion: nil)
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
