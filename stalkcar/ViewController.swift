//
//  ViewController.swift
//  stalkcar
//
//  Created by Alice Karsevar on 4/15/15.
//  Copyright (c) 2015 Best Day Ever. All rights reserved.
//  This app is for taking photos of license plates of people you hate and people you want to date.

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var loveOrHate: UISegmentedControl!
  
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var buttonTime: UIButton!
    
    @IBAction func runAnimation(sender: UIButton){
        if imageView.isAnimating(){
            imageView.stopAnimating()
            buttonTime.setTitle("Halt", forState: UIControlState.Normal)
        } else {
            imageView.startAnimating()
            buttonTime.setTitle("Gogogo", forState: UIControlState.Normal)
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
     
        var animationImages = [UIImage(named: "dog1.jpg"), UIImage(named: "cat.jpg"), UIImage(named: "fish.jpg")]
        
        imageView.animationImages = animationImages
        imageView.animationDuration = 1
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

