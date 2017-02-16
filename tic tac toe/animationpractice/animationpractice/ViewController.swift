//
//  ViewController.swift
//  animationpractice
//
//  Created by DMC on 06/05/16.
//  Copyright © 2016 DMC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    var counter=1
    
    @IBOutlet weak var imageview: UIImageView!
    
    
    
    @IBAction func go(sender: AnyObject) {
        
        if counter == 6
        {
            counter=1
        }
        else
        {
         counter+=1
        }
        imageview.image=UIImage(named:"cross\(counter).png" )
        
        
        
    }
    
    override func viewDidLayoutSubviews() {
        
        imageview.frame=CGRectMake(100,100,200,200)
        
    }
    
    override func viewDidAppear(animated: Bool)
    {
        UIView.animateWithDuration(1,animations: { () -> Void in
            
            
      self.imageview.frame=CGRectMake(100,100,0,0)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

