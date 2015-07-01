//
//  ShareViewController.swift
//  Restaurant
//
//  Created by thienle on 7/1/15.
//  Copyright (c) 2015 thienle. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController {

    var restaurant:Restaurant!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var facebookButton: UIButton!
    
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var twitterButton: UIButton!
    @IBOutlet weak var emailButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        var blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        println("email name : \(restaurant.image)")
        backgroundImageView.image = UIImage(named: restaurant.image)
        let scale = CGAffineTransformMakeScale(0.0, 0.0)
        let toptranlate = CGAffineTransformMakeTranslation(0, -500);
        let bottomTranslate = CGAffineTransformMakeTranslation(0, 500);
        facebookButton.transform = CGAffineTransformConcat(scale, toptranlate);
        emailButton.transform = CGAffineTransformConcat(scale, bottomTranslate);
        messageButton.transform = CGAffineTransformConcat(scale, bottomTranslate);
        twitterButton.transform = CGAffineTransformConcat(scale, toptranlate);
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(1.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
            let scale = CGAffineTransformMakeScale(1.0, 1.0)
            let toptranlate = CGAffineTransformMakeTranslation(0, 0);
            let bottomTranslate = CGAffineTransformMakeTranslation(0, 0);
            self.facebookButton.transform = CGAffineTransformConcat(scale, toptranlate)
            self.messageButton.transform = CGAffineTransformConcat(scale, toptranlate);
        }, completion: nil)
        UIView.animateWithDuration(1.5, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
            let scale = CGAffineTransformMakeScale(1.0, 1.0)
            let toptranlate = CGAffineTransformMakeTranslation(0, 0);
            let bottomTranslate = CGAffineTransformMakeTranslation(0, 0);
            self.emailButton.transform = CGAffineTransformConcat(scale, bottomTranslate);
            self.twitterButton.transform = CGAffineTransformConcat(scale, toptranlate);
            }, completion: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
