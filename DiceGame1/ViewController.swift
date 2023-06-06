//
//  ViewController.swift
//  DiceGame1
//
//  Created by DA MAC M1 139 on 2023/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Dice2: UIImageView!
    @IBOutlet weak var Dice1: UIImageView!
    
    @IBOutlet weak var lblDice: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnRoll(_ sender: Any){
        
        
       // let randomInt2 = Int.random(in: 1..<6)
        //Dice2.image = UIImage(named: String(randomInt2))
        
        var c = 0
        var varTimer = Timer.scheduledTimer(withTimeInterval: 0.08, repeats: true)
        { (varTimer) in
            c=c+1
            
            let randomInt1 = Int.random(in: 1..<7)
            self.Dice1.image = UIImage(named: String(randomInt1))
            
            let randomInt2 = Int.random(in: 1..<7)
            self.Dice2.image = UIImage(named: String(randomInt2))
            
            var total = randomInt1 + randomInt2
            if((randomInt1 == 6) && randomInt2 == 6)
            {
                self.lblDice.text = "WINNER"
            }
            else
            {
                self.lblDice.text = "TRY AGAIN"
            }
            
            
            if(c == 20)
            {
                varTimer.invalidate()
            }
        }
    }
    
    
}

