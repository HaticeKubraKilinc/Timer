//
//  ViewController.swift
//  Timer
//
//  Created by hatice kübra kılınç on 1.03.2018.
//  Copyright © 2018 hatice kübra kılınç. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var TIMER = Timer()
    var Seconds = 5
 //   let Mylabel : UILabel = UILabel(frame : CGRect(x: 50, y: 50, widht: 320,  height: 50))
    
    
    @IBOutlet weak var MyLabel: UILabel!
    
    
    @objc func clock() {
        Seconds = Seconds-1
        MyLabel.text = String(Seconds)
        if (Seconds == 0){
            MyLabel.backgroundColor = UIColor.black
                MyLabel.text = "times up"
            
            if(MyLabel.text == "times up"){
                print (" geçiş ")
                
              //self.performSegue(withIdentifier: "sender", sender: self)

//                let alert = UIAlertController(title: "Subsicribe?" , message:"kjhkvgfjsvhkcjblknlm.şf", preferredStyle: .alert )
//                let subButton = UIAlertAction(title:"Subsicribe" , style : .default , handler : self.sub)
//
//                let cancelButton = UIAlertAction(title: "Cancel" , style : .cancel , handler : .nil)

        
                
            }
                TIMER.invalidate()
            }
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TIMER = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(clock)),
         userInfo: nil, repeats: true)
        
    }
        
        
        
    }
    



