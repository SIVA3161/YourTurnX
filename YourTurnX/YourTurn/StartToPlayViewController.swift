//
//  StartToPlayViewController.swift
//  YourTurn
//
//  Created by user176911 on 6/4/21.
//

import UIKit

class StartToPlayViewController: UIViewController {

    @IBOutlet weak var playNameTxtField:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue,sender:Any?){
        let startToPlayVC = segue.destination as! ViewController
        print(playNameTxtField.text!)
        if segue.identifier == "playerstationidentifier"{
            startToPlayVC.playerName = playNameTxtField.text!
        }
        
    }


}



