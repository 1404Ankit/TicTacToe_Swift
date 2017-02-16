//
//  ViewController.swift
//  tic tac toe
//
//  Created by DMC on 06/05/16.
//  Copyright © 2016 DMC. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var active_player=1
    
    var game_state=[0,0,0,0,0,0,0,0,0]
    
    var winning_combos=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    
    var game_active=true
    
    
    
    @IBOutlet weak var btnoutlet: UIButton!
    
    
    @IBAction func btnaction(sender: AnyObject)
    {
        if game_state[sender.tag]==0
        {
            game_state[sender.tag]=active_player
        
            if  active_player==1
            {
                sender.setImage(UIImage(named: "nought.png"),forState:.Normal)
                active_player=2
            }       
            else
            {
                sender.setImage(UIImage(named: "cross6.png"), forState:.Normal)
                active_player=1
            }
        }
        
        for combos in winning_combos
        {
            if(game_state[combos[0]] != 0 &&
                game_state[combos[0]] == game_state[combos[1]] &&
                game_state[combos[1]] == game_state[combos[2]])
            {
                if game_state[combos[0]]==1
                {
                    print("Nought have Won")
                    game_active=false
                }
                else
                {
                    print("Cross have Won")
                    game_active=false
                }
            }
        }
        
        if game_active==true
        {
            game_active=false
            
            for buttonPressed in game_state
            {
                if buttonPressed==0
                {
                    game_active=true
                }
            
            }
            if game_active==false
            {
                print("match is drawn")
            }
        }
        
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var playout: UIButton!
    
    
    @IBAction func play(sender: AnyObject)
    {
        active_player=1
        game_state=[0,0,0,0,0,0,0,0,0]
        game_active=true
        
        var buttonToClear:UIButton
        for var clr = 0 ; clr < 9 ; clr = clr+1
            
        {
            buttonToClear = view.viewWithTag (clr) as! UIButton
            
            buttonToClear.setImage(nil, forState: .Normal)
            
        }
    }
}


