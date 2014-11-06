//
//  ViewController.swift
//  HelloSwift
//
//  Created by Vinson Compestine on 10/24/14.
//  Copyright (c) 2014 Vinson Compestine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstCardView: UIImageView!
    @IBOutlet weak var SecondCardView: UIImageView!
    @IBOutlet weak var PlayButton: UIButton!
    @IBOutlet weak var Background: UIImageView!
    @IBOutlet weak var PlayerOneScore: UILabel!
    @IBOutlet weak var PlayerTwoScore: UILabel!
    
    var cardNames = ["c14", "c2", "c3", "c4", "c5", "c6", "c7", "c8", "c9", "c10", "c11", "c12", "c13", "d14", "d2", "d3", "d4", "d5", "d6", "d7", "d8", "d9", "d10", "d11", "d12", "d13", "h14", "h2", "h3", "h4", "h5", "h6", "h7", "h8", "h9", "h10", "h11", "h12", "h13", "s14", "s2","s3", "s4", "s5", "s6", "s7", "s8", "s9", "s10", "s11", "s12", "s13"]
    
    var oneScore = 0
    var twoScore = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.PlayButton.setTitle("Round Start", forState: UIControlState.Normal)
        
        self.Background.image = UIImage(named: "feltBackground")
        self.FirstCardView.image = UIImage(named:"b1fv")
        self.SecondCardView.image = UIImage(named:"b2fv")

        self.PlayerOneScore.text = String(oneScore)
        self.PlayerTwoScore.text = String (twoScore)
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func PlayRoundTapped(sender: UIButton) {
        
        //Select Random card
        var randNum1 = Int(arc4random_uniform(52))
        var randNum2 = Int(arc4random_uniform(52))
        
        
        var card1 = self.cardNames[randNum1]
        var card2 = self.cardNames[randNum2]
        
        self.FirstCardView.image = UIImage(named:card1)
        self.SecondCardView.image = UIImage(named: card2)
       
        let range1 = Range(start: (advance(card1.startIndex, 1)), end: card1.endIndex)
        let valueOne = card1.substringWithRange(range1).toInt()
        
        let range2 = Range(start: (advance(card2.startIndex, 1)), end: card2.endIndex)
        let valueTwo = card2.substringWithRange(range2).toInt()
        
        
        if valueOne > valueTwo{
            oneScore += 1
        }
        else if valueOne == valueTwo{
            //Tie
        }
        else {
            twoScore += 1
        }
        
        self.PlayerOneScore.text = String(oneScore)
        self.PlayerTwoScore.text = String (twoScore)
    
        
    }

}

