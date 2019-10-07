//
//  ViewController.swift
//  LightProject
//
//  Created by Anthony Fleming on 10/4/19.
//  Copyright © 2019 Anthony Fleming. All rights reserved.
//

// Code Begins below this line Light project part 1_________________________

import UIKit

class ViewController: UIViewController {
    
    
    var lightOn = true
    
    var switchOn = true
   //Variables above this line____________________
    
    
    
    @IBOutlet var titleLabel: UILabel!
    // Outlet for Question on the screen^^^^^
    
    
    @IBAction func switchPressed (_ sender: UISwitch){
        
        if (sender.isOn){
            lightButton.backgroundColor = .red
            
        } else {
            lightButton.backgroundColor = .gray
        }
        
    }
    
    //fucntion for the switch^^^^^
    
    
    
// Code for light on and off button____________________
    @IBOutlet var lightButton: UIButton!
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        
        updateUi()
        
    }
    
    func updateUi() {
        
        if lightOn {
            view.backgroundColor = .white
            
            lightButton.setTitle("Off", for: .normal)
            
            lightButton.setTitleColor(.white, for: .normal)
            
            lightButton.backgroundColor = .gray
            
            titleLabel.textColor = .black
            
        } else {
            view.backgroundColor = .black
            
            lightButton.setTitle("On", for: .normal)
            
            lightButton.setTitleColor(.white, for: .normal)
            
            lightButton.backgroundColor = .gray
            
             titleLabel.textColor = .red
        }
        
    }

    
    // Don't worry about the stuff below here __________________
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUi()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}



