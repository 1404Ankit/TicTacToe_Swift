//
//  ViewController.swift
//  Deepesh
//
//  Created by DMC on 07/05/16.
//  Copyright © 2016 DMC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 1
    
    
    
    @IBOutlet weak var imgout: UIImageView!
    @IBOutlet weak var btnout: UIButton!
    @IBAction func btnact(sender: AnyObject)
    {
       //  incrTimer()
        
        if counter==5
        {
            counter = 1
        }
        else
        {
            counter+=1
            //var timer=NSTimer()
           // timer = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: Selector("incrTimer"), userInfo: nil, repeats: true)
            
            
        }
        imgout.image = UIImage(named: "frame\(counter).png")
        
    }
//    func incrTimer()
//    {
//        counter+=1
//        imgout.image = UIImage(named: "frame\(counter).png")
//        
//    }
    
    
    override func viewDidLayoutSubviews()
    {
        imgout.frame=CGRectMake(50,50,0,0)
        
//        self.imgout.frame=CGRectMake(50,50, 100,100)
//        imgout.center=CGPointMake(imgout.center.x+25, imgout.center.y+50)
//        imgout.alpha=1
    }
    
    
    override func viewDidAppear(animated: Bool)
    {
        UIView.animateWithDuration(1, animations: {()->Void in
            self.imgout.frame = CGRectMake(50, 50, 0, 0)
        
       /* UIView.animateWithDuration(10, animations: {<#T##() -> Void#>in
            self.imgout.frame = CGRectMake(50, 50, 0, 0)
            self.imgout.center = CGPointMake(self.imgout.center.x+50, self.imgout.center.y+50)
            
    })*/
//        UIView.animateWithDuration(10, animations: {() -> Void in
//            self.imgout.frame = CGRectMake(50, 50, 0, 0)
//            self.imgout.center = CGPointMake(self.imgout.center.x+50, self.imgout.center.y+50)
//        })
        
    })

   func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

     func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
}

