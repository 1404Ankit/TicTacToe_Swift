//
//  ViewController.swift
//  animate
//
//  Created by DMC on 07/05/16.
//  Copyright © 2016 DMC. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var frame_counter=1

    @IBOutlet weak var btnoutlet: UIButton!
    
    @IBAction func btnaction(sender: AnyObject)
    {
        if frame_counter==5
        {
            frame_counter=1
        }
        else
        {
            frame_counter+=1
        }
        
       // sender.setImage(UIImage(named: "frame1.png"), forState: .Normal)
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewDidLayoutSubviews()
    {
        btnoutlet.center=CGPointMake(btnoutlet.center.x-100, btnoutlet.center.y)
    }

    
    override func viewWillAppear(animated: Bool)
    {
        UIView.animateWithDuration(1, animations: {() -> Void in self.btnoutlet.center=CGPointMake(self.btnoutlet.center.x, self.btnoutlet.center.y+100)
    })
    }
}


