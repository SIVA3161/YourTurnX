//
//  ViewController.swift
//  YourTurn
//
//  Created by user176911 on 6/1/21.
// Perfect

import UIKit

class ViewController: UIViewController {
    var imageName = ["Dice1","Dice2","Dice3","Dice4","Dice5","Dice6"]
    @IBOutlet weak var dice: UIImageView!
    
    @IBOutlet weak var OutcomeLabel: UILabel!
    var playerName:String = ""
    //Button actions while tapping the button it shows the outcome of the dice
    @IBAction func TestYourTurnBtn(_ sender: Any) {
        let range=Int.random(in: 0...5)
        dice.image = UIImage(named:imageName[range])
        OutcomeLabel.text = "\(range+1)"
        if (range)==5{
            let msg = "Dear \(playerName),You are so lucky!"
            let alert = UIAlertController(title: "Congratulations!", message: msg, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Thanks :)", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
    }
    
}
    


