//
//  ViewController.swift
//  War App
//
//  Created by Edmond Shao on 1/13/17.
//  Copyright © 2017 Edmond Shao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Cards image view
    
    @IBOutlet weak var leftcard: UIImageView!
    @IBOutlet weak var rightcard: UIImageView!
    //scoreboard
    @IBOutlet weak var leftscorelabel: UILabel!
    @IBOutlet weak var Rightscore: UILabel!
    //score int
    var leftsc = 0
    var rightsc = 0
    
    
    //card list
    let cardnames = [ "card2", "card4", "card5", "card6", "card7", "card8", "card8", "card9", "card10", "king", "queen", "jack", "ace"]
    
    //dealbutton whenever the function tapped
    @IBAction func dealTapped(_ sender: Any) {
        print("deal tapped")
        let leftnum = Int(arc4random_uniform(13))
        let rightnum = Int(arc4random_uniform(13))
        
        leftcard.image = UIImage(named: cardnames[leftnum])
        rightcard.image = UIImage(named: cardnames[rightnum])
        
        
        if( leftnum>rightnum){
            //left card wins
            leftsc+=1
            leftscorelabel.text = String(leftsc)
            
        }
        else if(leftnum == rightnum){
            //tie
            
        }
        else{
            //right card wins
            rightsc+=1
            Rightscore.text = String(rightsc)
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

}
