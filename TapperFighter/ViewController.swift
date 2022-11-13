//
//  ViewController.swift
//  TapperFighter
//
//  Created by Cumali Atalan on 13.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var scoreTableView: UITableView!
    
    var scores: [String : Any] = [:]
    var users: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreTableView.dataSource = self
        scoreTableView.delegate = self
        highScoreLabel.text = "0"
        
    
        
        let userdefaultsDicValue = UserDefaults.standard.dictionary(forKey: "scores")
        scores = userdefaultsDicValue ?? [:]
        
        let userdefaultsStringValue = UserDefaults.standard.stringArray(forKey: "users")
        users = userdefaultsStringValue ?? []
        
       
//        let strings = UserDefaults.object(forKey: "myKey") as? [String:String]
        
    }
    
 
    
    @IBAction func startButton(_ sender: Any) {
        if userNameTextField.text != "" {
            performSegue(withIdentifier: "gameStartSegue", sender: nil)
        }
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gameStartSegue" {
            guard let vc = segue.destination as? SecondVC else { return }
            vc.username = userNameTextField.text ?? "N/A"
        }
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = scoreTableView.dequeueReusableCell(withIdentifier: "ScoreCell", for: indexPath) as! ScoreTableViewCell
        let user = users[indexPath.row]
//        cell.scoreLabel.text = scores[user]
        cell.nameLabel.text = user
       
        
        return cell
        
    }
    
    
}
