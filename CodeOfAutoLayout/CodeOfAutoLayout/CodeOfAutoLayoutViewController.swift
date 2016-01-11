//
//  ViewController.swift
//  CodeOfAutoLayout
//
//  Created by satoutakeshi on 2016/01/11.
//  Copyright © 2016年 satoutakeshi. All rights reserved.
//

import UIKit

class CodeOfAutoLayoutViewController: UIViewController {

    let redView     = UIView(frame: CGRectZero)
    let yellowView  = UIView(frame: CGRectZero)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
        redView.backgroundColor = UIColor.redColor()
        redView.translatesAutoresizingMaskIntoConstraints = false
    
        
        yellowView.backgroundColor = UIColor.yellowColor()
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(redView)
        self.view.addSubview(yellowView)

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func viewDidLayoutSubviews() {
        /*
        隣接制約
        */
        
        let redViewTopConstraint = NSLayoutConstraint(item: redView,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1.0,
            constant: 88)
        self.view.addConstraint(redViewTopConstraint)
        
        let redViewLeadingConstraint = NSLayoutConstraint(item: redView,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1.0,
            constant: 10)
        self.view.addConstraint(redViewLeadingConstraint)
        
        
        let redViewBottonConstraint = NSLayoutConstraint(item: redView,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1.0,
            constant: -20)
        self.view.addConstraint(redViewBottonConstraint)
        
        let redViewWidthConstraint = NSLayoutConstraint(item: redView,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Width,
            multiplier: 0.4,
            constant: 0)
        
        self.view.addConstraint(redViewWidthConstraint)
        
        
        let yellowTopConstraint = NSLayoutConstraint(item: yellowView,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1.0,
            constant: 88)
        self.view.addConstraint(yellowTopConstraint)
        
        let yellowTrailingConstraint = NSLayoutConstraint(item: yellowView, attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Trailing,
            multiplier: 1.0,
            constant: -10)
        self.view.addConstraint(yellowTrailingConstraint)
        
        let yellowWidthConstraint = NSLayoutConstraint(item: yellowView,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: redView,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1.0,
            constant: 0)
        self.view.addConstraint(yellowWidthConstraint)
        
        let yellowBottonConstraint = NSLayoutConstraint(item: yellowView, attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1.0,
            constant: -20)
        self.view.addConstraint(yellowBottonConstraint)
        
    }
    
}

