//
//  ViewController.swift
//  DiceApp
//
//  Created by İbrahim Ballıbaba on 15.04.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceOne: UIImageView!
    @IBOutlet weak var diceTwo: UIImageView!
    @IBOutlet weak var playerOneScore: UILabel!
    @IBOutlet weak var playerTwoScore: UILabel!
    @IBOutlet weak var playerOnePoint: UILabel!
    @IBOutlet weak var playerTwoPoint: UILabel!
    
    var playerPoints = (firstPlayerPoint : 0 , secondPlayerPoint : 0)
    var playerScores = (firstPlayerScore : 0 , secondPlayerScore : 0)
    var playerTurn = 1
    
    var diceArray = [1,2,3,4,5,6]
    
    override func viewDidLoad() {
        
        diceOne.image = UIImage(named: "1.png")
        diceTwo.image = UIImage(named: "2.png")
        diceOne.image = UIImage(named: "3.png")
    }

    @IBAction func rollButton(_ sender: UIButton) {
            
                rolltry()
            }
    
    
        func setResult(dice1: Int, dice2: Int){
        
            if playerTurn == 1 {
                
                playerPoints.firstPlayerPoint = dice1 + dice2
                playerOnePoint.text = String(playerPoints.firstPlayerPoint)
                playerTurn = 2
                playerTwoPoint.text = "0"
                
            } else {
                
                playerPoints.secondPlayerPoint = dice1 + dice2
                playerTwoPoint.text = String(playerPoints.secondPlayerPoint)
                
                if playerPoints.firstPlayerPoint > playerPoints.secondPlayerPoint {
                    playerScores.firstPlayerScore += 1
                    playerOneScore.text = String(playerScores.firstPlayerScore)
                } else if playerPoints.secondPlayerPoint > playerPoints.firstPlayerPoint {
                    playerScores.secondPlayerScore += 1
                    playerTwoScore.text = String(playerScores.secondPlayerScore)
                }
                playerTurn = 1
                
                
            }
        
    }
     
    
    func rolltry (){
        
        let dice1 = diceArray[Int.random(in: 0...5)]
        let dice2 = diceArray[Int.random(in: 0...5)]
        
         
         diceOne.image = UIImage(named: String(dice1))
         diceTwo.image = UIImage(named: String(dice2))
        
        setResult(dice1: dice1, dice2: dice2)
    
    }
}

