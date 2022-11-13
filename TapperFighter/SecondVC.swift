//
//  SecondVC.swift
//  TapperFighter
//
//  Created by Tolga Kağan Aysu on 13.11.2022.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var timerLabel: UILabel!
    var time = 5
    var score = 0
    var username = ""
    var scores: [String : Int] = [:]
    var users: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = String(score)
        timerLabel.text = String(time)
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @IBAction func clickedButton(_ sender: Any) {
        if time >= 0 {
            score += 1
            scoreLabel.text = "Score: \(score)"
        }
    }
    
    @objc func updateCounter() {
        
        guard time >= 0 else {
            timerLabel.text = "Game Over"
            scores[username] = score
            users.append(username)
            UserDefaults.standard.set(users, forKey: "users")
            UserDefaults.standard.set(scores, forKey: "scores")
            return
        }
        timerLabel.text = String(time)
        print("\(time) ")
        time -= 1
        
    }
}
